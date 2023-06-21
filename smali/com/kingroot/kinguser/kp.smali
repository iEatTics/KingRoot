.class final Lcom/kingroot/kinguser/kp;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Lcom/kingroot/kinguser/ll;I)I
    .locals 3

    .prologue
    .line 130
    if-nez p1, :cond_0

    .line 150
    :goto_0
    return p1

    .line 134
    :cond_0
    const/4 v0, 0x0

    .line 135
    invoke-interface {p0}, Lcom/kingroot/kinguser/ll;->getType()I

    move-result v1

    .line 137
    if-nez v1, :cond_2

    .line 138
    const/high16 v0, 0x6030000

    .line 148
    :cond_1
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int p1, v0, v1

    .line 150
    goto :goto_0

    .line 139
    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 140
    check-cast p0, Lcom/kingroot/kinguser/lj;

    .line 141
    invoke-virtual {p0}, Lcom/kingroot/kinguser/lj;->dU()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 142
    const/high16 v0, 0x6020000

    goto :goto_1

    .line 144
    :cond_3
    const/high16 v0, 0x6010000

    goto :goto_1
.end method

.method static a(Lcom/kingroot/kinguser/hi;)Lcom/kingroot/kinguser/ho;
    .locals 3

    .prologue
    .line 24
    new-instance v0, Lcom/kingroot/kinguser/mw;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/mw;-><init>(Lcom/kingroot/kinguser/hi;)V

    .line 25
    invoke-virtual {v0}, Lcom/kingroot/kinguser/mw;->eK()V

    .line 27
    invoke-static {p0}, Lcom/kingroot/kinguser/kp;->c(Lcom/kingroot/kinguser/hi;)Lcom/kingroot/kinguser/ho;

    move-result-object v1

    .line 29
    invoke-interface {v1}, Lcom/kingroot/kinguser/ho;->be()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/mw;->an(I)V

    .line 31
    return-object v1
.end method

.method private static b(Lcom/kingroot/kinguser/ll;)Lcom/kingroot/kinguser/ho;
    .locals 3

    .prologue
    .line 88
    invoke-static {p0}, Lcom/kingroot/kinguser/jj;->b(Lcom/kingroot/kinguser/hi;)Ljava/util/List;

    move-result-object v1

    .line 90
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 94
    invoke-interface {p0}, Lcom/kingroot/kinguser/ll;->aZ()Lcom/kingroot/kinguser/hh;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/hh;->aX()I

    move-result v0

    .line 95
    invoke-interface {p0}, Lcom/kingroot/kinguser/ll;->aZ()Lcom/kingroot/kinguser/hh;

    move-result-object v2

    invoke-interface {v2}, Lcom/kingroot/kinguser/hh;->aY()Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-static {v2, v0}, Lcom/kingroot/kinguser/jj;->c(Ljava/lang/String;I)Z

    move-result v2

    .line 97
    if-nez v2, :cond_0

    .line 99
    const v0, 0x6000012

    const-string v1, "inject failed"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/km;->g(ILjava/lang/String;)Lcom/kingroot/kinguser/ho;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    .line 102
    :cond_0
    invoke-static {v0}, Lcom/kingroot/kinguser/jj;->S(I)Lcom/king/uranus/bd;

    move-result-object v0

    .line 103
    if-nez v0, :cond_1

    .line 105
    const v0, 0x6000013

    const-string v1, "client connected timeout"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/km;->g(ILjava/lang/String;)Lcom/kingroot/kinguser/ho;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_2
    const/4 v0, 0x0

    .line 112
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/king/uranus/bd;

    .line 113
    invoke-interface {v0, p0}, Lcom/king/uranus/bd;->a(Lcom/kingroot/kinguser/ll;)I

    move-result v0

    goto :goto_1

    .line 125
    :cond_3
    invoke-static {p0, v0}, Lcom/kingroot/kinguser/kp;->a(Lcom/kingroot/kinguser/ll;I)I

    move-result v0

    const-string v1, "Task failed"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/km;->g(ILjava/lang/String;)Lcom/kingroot/kinguser/ho;

    move-result-object v0

    goto :goto_0
.end method

.method private static c(Lcom/kingroot/kinguser/hi;)Lcom/kingroot/kinguser/ho;
    .locals 3

    .prologue
    .line 63
    move-object v0, p0

    check-cast v0, Lcom/kingroot/kinguser/ll;

    .line 66
    invoke-interface {v0}, Lcom/kingroot/kinguser/ll;->ct()I

    move-result v1

    .line 67
    const v2, 0x6000001

    if-eq v1, v2, :cond_0

    .line 68
    const-string v0, "Prepare task failed"

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/km;->g(ILjava/lang/String;)Lcom/kingroot/kinguser/ho;

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    .line 72
    :cond_0
    const-class v1, Lcom/kingroot/kinguser/hm;

    invoke-static {v1}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/hm;

    .line 73
    if-eqz v1, :cond_1

    .line 74
    invoke-interface {v0}, Lcom/kingroot/kinguser/ll;->dV()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/kingroot/kinguser/hm;->h(Ljava/util/List;)I

    .line 78
    :cond_1
    invoke-interface {p0}, Lcom/kingroot/kinguser/hi;->ba()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    invoke-static {v0}, Lcom/kingroot/kinguser/kp;->c(Lcom/kingroot/kinguser/ll;)Lcom/kingroot/kinguser/ho;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_2
    invoke-static {v0}, Lcom/kingroot/kinguser/kp;->b(Lcom/kingroot/kinguser/ll;)Lcom/kingroot/kinguser/ho;

    move-result-object v0

    goto :goto_0
.end method

.method private static c(Lcom/kingroot/kinguser/ll;)Lcom/kingroot/kinguser/ho;
    .locals 2

    .prologue
    .line 156
    invoke-static {p0}, Lcom/kingroot/kinguser/lh;->e(Lcom/kingroot/kinguser/ll;)I

    move-result v0

    .line 157
    if-nez v0, :cond_0

    .line 158
    invoke-static {}, Lcom/kingroot/kinguser/km;->da()Lcom/kingroot/kinguser/ho;

    move-result-object v0

    .line 160
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/km;->g(ILjava/lang/String;)Lcom/kingroot/kinguser/ho;

    move-result-object v0

    goto :goto_0
.end method
