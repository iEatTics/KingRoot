.class Lcom/kingroot/kinguser/aos$1;
.super Lcom/kingroot/kinguser/apa$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aGv:Lcom/kingroot/kinguser/aos;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aos;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/kingroot/kinguser/aos$1;->aGv:Lcom/kingroot/kinguser/aos;

    invoke-direct {p0}, Lcom/kingroot/kinguser/apa$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bom;)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/aos$1;->aGv:Lcom/kingroot/kinguser/aos;

    invoke-static {v0}, Lcom/kingroot/kinguser/aos;->a(Lcom/kingroot/kinguser/aos;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 68
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/apa$a;

    .line 70
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/apa$a;->a(Lcom/kingroot/kinguser/bom;)V

    goto :goto_0

    .line 75
    :cond_1
    return-void
.end method

.method public b(Lcom/kingroot/kinguser/bom;)V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/aos$1;->aGv:Lcom/kingroot/kinguser/aos;

    invoke-static {v0}, Lcom/kingroot/kinguser/aos;->b(Lcom/kingroot/kinguser/aos;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 81
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/apa$a;

    .line 83
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/apa$a;->b(Lcom/kingroot/kinguser/bom;)V

    goto :goto_0

    .line 88
    :cond_1
    return-void
.end method

.method public c(Lcom/kingroot/kinguser/bom;)V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/kingroot/kinguser/aos$1;->aGv:Lcom/kingroot/kinguser/aos;

    invoke-static {v0}, Lcom/kingroot/kinguser/aos;->c(Lcom/kingroot/kinguser/aos;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 94
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/apa$a;

    .line 96
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/apa$a;->c(Lcom/kingroot/kinguser/bom;)V

    goto :goto_0

    .line 101
    :cond_1
    return-void
.end method

.method public d(Lcom/kingroot/kinguser/bom;)V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/kingroot/kinguser/aos$1;->aGv:Lcom/kingroot/kinguser/aos;

    invoke-static {v0}, Lcom/kingroot/kinguser/aos;->d(Lcom/kingroot/kinguser/aos;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 107
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 108
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/apa$a;

    .line 109
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/apa$a;->d(Lcom/kingroot/kinguser/bom;)V

    goto :goto_0

    .line 114
    :cond_1
    return-void
.end method

.method public e(Lcom/kingroot/kinguser/bom;)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/kingroot/kinguser/aos$1;->aGv:Lcom/kingroot/kinguser/aos;

    invoke-static {v0}, Lcom/kingroot/kinguser/aos;->e(Lcom/kingroot/kinguser/aos;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 120
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 121
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/apa$a;

    .line 122
    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/apa$a;->e(Lcom/kingroot/kinguser/bom;)V

    goto :goto_0

    .line 127
    :cond_1
    return-void
.end method

.method public f(Lcom/kingroot/kinguser/bom;)V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/kingroot/kinguser/aos$1;->aGv:Lcom/kingroot/kinguser/aos;

    invoke-static {v0}, Lcom/kingroot/kinguser/aos;->f(Lcom/kingroot/kinguser/aos;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 133
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/apa$a;

    .line 135
    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/apa$a;->f(Lcom/kingroot/kinguser/bom;)V

    goto :goto_0

    .line 140
    :cond_1
    return-void
.end method

.method public g(Lcom/kingroot/kinguser/bom;)V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/kingroot/kinguser/aos$1;->aGv:Lcom/kingroot/kinguser/aos;

    invoke-static {v0}, Lcom/kingroot/kinguser/aos;->g(Lcom/kingroot/kinguser/aos;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 146
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 147
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/apa$a;

    .line 148
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/apa$a;->g(Lcom/kingroot/kinguser/bom;)V

    goto :goto_0

    .line 153
    :cond_1
    return-void
.end method

.method public h(Lcom/kingroot/kinguser/bom;)V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/kingroot/kinguser/aos$1;->aGv:Lcom/kingroot/kinguser/aos;

    invoke-static {v0}, Lcom/kingroot/kinguser/aos;->h(Lcom/kingroot/kinguser/aos;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 161
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/apa$a;

    .line 163
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/apa$a;->h(Lcom/kingroot/kinguser/bom;)V

    goto :goto_0

    .line 168
    :cond_1
    return-void
.end method

.method public i(Lcom/kingroot/kinguser/bom;)V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/kingroot/kinguser/aos$1;->aGv:Lcom/kingroot/kinguser/aos;

    invoke-static {v0}, Lcom/kingroot/kinguser/aos;->i(Lcom/kingroot/kinguser/aos;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 174
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 175
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/apa$a;

    .line 176
    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/apa$a;->i(Lcom/kingroot/kinguser/bom;)V

    goto :goto_0

    .line 181
    :cond_1
    return-void
.end method

.method public j(Lcom/kingroot/kinguser/bom;)V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/kingroot/kinguser/aos$1;->aGv:Lcom/kingroot/kinguser/aos;

    invoke-static {v0}, Lcom/kingroot/kinguser/aos;->j(Lcom/kingroot/kinguser/aos;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 187
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 188
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/apa$a;

    .line 189
    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/apa$a;->j(Lcom/kingroot/kinguser/bom;)V

    goto :goto_0

    .line 194
    :cond_1
    return-void
.end method

.method public k(Lcom/kingroot/kinguser/bom;)V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/kingroot/kinguser/aos$1;->aGv:Lcom/kingroot/kinguser/aos;

    invoke-static {v0}, Lcom/kingroot/kinguser/aos;->k(Lcom/kingroot/kinguser/aos;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 200
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 201
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/apa$a;

    .line 202
    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/apa$a;->k(Lcom/kingroot/kinguser/bom;)V

    goto :goto_0

    .line 207
    :cond_1
    return-void
.end method

.method public l(Lcom/kingroot/kinguser/bom;)V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/kingroot/kinguser/aos$1;->aGv:Lcom/kingroot/kinguser/aos;

    invoke-static {v0}, Lcom/kingroot/kinguser/aos;->l(Lcom/kingroot/kinguser/aos;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 213
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 214
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/apa$a;

    .line 215
    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/apa$a;->l(Lcom/kingroot/kinguser/bom;)V

    goto :goto_0

    .line 220
    :cond_1
    return-void
.end method

.method public m(Lcom/kingroot/kinguser/bom;)V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/kingroot/kinguser/aos$1;->aGv:Lcom/kingroot/kinguser/aos;

    invoke-static {v0}, Lcom/kingroot/kinguser/aos;->m(Lcom/kingroot/kinguser/aos;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 226
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 227
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/apa$a;

    .line 228
    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/apa$a;->m(Lcom/kingroot/kinguser/bom;)V

    goto :goto_0

    .line 233
    :cond_1
    return-void
.end method
