#include <stdio.h>
#include <iostream>
#include <algorithm>
#include <cassert>
#include <cstdlib>
#include <vector>
#include <queue>
#include <set>

typedef long long ll;

const int N = 2e5 + 5;
const ll INF = 9e18;

bool b[N];

int main() {
    #ifdef _koala
        freopen("input.txt", "r", stdin);
        // freopen("output.txt", "w", stdout);
    #endif
    int n, m;
    scanf("%d%d", &n, &m);
    ll a[N];
    std::vector<std::pair<int, ll>> g[N];
    std::set<std::pair<ll, int>> q, best_a;
    for (int i = 0; i < n; i++) {
        scanf("%lld", &a[i]);
        best_a.insert({a[i], i});
    }
    for (int i = 0; i < m; i++) {
        int x, y;
        ll w;
        scanf("%d%d%lld", &x, &y, &w);
        x--, y--;
        g[x].push_back({y, w});
        g[y].push_back({x, w});
    }
    ll d[N];
    std::fill(d, d + N, INF);
    ll ans = 0;
    d[0] = 0;
    ll mn = INF;
    int next = 0;
    bool visited[N];
    std::fill(visited, visited + N, 0);

    while (true) {
        int v = next;
        visited[v] = true;
        best_a.erase({a[v], v});
        mn = std::min(mn, a[v]);
        if (best_a.size() == 0)
            break;
        std::pair<ll, int> t = {(*best_a.begin()).first + mn, (*best_a.begin()).second};
        for (auto p : g[v]) {
            ll w = p.second;
            int u = p.first;
            if (!visited[u] && d[u] > w) {
                q.erase({d[u], u});
                d[u] = w;
                q.insert({d[u], u});
            }
        }
        if (q.size() && *q.begin() < t) {
            t = *q.begin();
            q.erase(q.begin());
        } else {
            q.erase({d[t.second], t.second});
            d[t.second] = t.first;
        }
        next = t.second;
        ans += t.first;
    }
    printf("%lld", ans);
}

