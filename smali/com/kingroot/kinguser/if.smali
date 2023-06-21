.class public final Lcom/kingroot/kinguser/if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/if$a;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;

.field private rA:Ljava/lang/String;

.field private rB:Ljava/lang/String;

.field private rC:Ljava/lang/String;

.field private rD:Ljava/lang/String;

.field private rE:Ljava/lang/String;

.field private rF:Lcom/kingroot/kinguser/hg;

.field private rG:Lcom/kingroot/kinguser/hr;

.field private final rH:Lcom/kingroot/kinguser/he;

.field private rI:Lcom/kingroot/kinguser/hz;

.field private rJ:Lcom/kingroot/kinguser/hp;

.field private final rK:Lcom/kingroot/kinguser/hj;

.field private rL:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/ks;",
            ">;"
        }
    .end annotation
.end field

.field private rM:Ljava/lang/String;

.field private rN:Z

.field private rO:Z

.field private rP:Ljava/lang/String;

.field private rQ:Ljava/lang/String;

.field private rR:Ljava/lang/String;

.field private rS:I

.field private rp:Ljava/lang/String;

.field private rq:Ljava/lang/String;

.field private rr:Ljava/lang/String;

.field private rs:Ljava/lang/String;

.field private rt:Ljava/lang/String;

.field private ru:Ljava/lang/String;

.field private rv:Ljava/lang/String;

.field private rw:Ljava/lang/String;

.field private rx:Ljava/lang/String;

.field private ry:Ljava/lang/String;

.field private rz:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/kingroot/kinguser/if$a;)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/if;->rL:Ljava/util/Map;

    .line 72
    invoke-static {p1}, Lcom/kingroot/kinguser/if$a;->a(Lcom/kingroot/kinguser/if$a;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/if;->mContext:Landroid/content/Context;

    .line 73
    invoke-static {p1}, Lcom/kingroot/kinguser/if$a;->b(Lcom/kingroot/kinguser/if$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/if;->rs:Ljava/lang/String;

    .line 74
    invoke-static {p1}, Lcom/kingroot/kinguser/if$a;->c(Lcom/kingroot/kinguser/if$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/if;->mPackageName:Ljava/lang/String;

    .line 75
    invoke-static {p1}, Lcom/kingroot/kinguser/if$a;->d(Lcom/kingroot/kinguser/if$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/if;->rp:Ljava/lang/String;

    .line 76
    invoke-static {p1}, Lcom/kingroot/kinguser/if$a;->e(Lcom/kingroot/kinguser/if$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/if;->rq:Ljava/lang/String;

    .line 79
    const-string v0, "ipme"

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/if;->ax(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/if;->rt:Ljava/lang/String;

    .line 80
    const-string v0, "ipme64"

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/if;->ax(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/if;->ru:Ljava/lang/String;

    .line 82
    const-string v0, "libclient.so"

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/if;->ax(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/if;->rv:Ljava/lang/String;

    .line 83
    const-string v0, "libclient64.so"

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/if;->ax(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/if;->rw:Ljava/lang/String;

    .line 85
    const-string v0, "libsrvmgr.so"

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/if;->ax(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/if;->rx:Ljava/lang/String;

    .line 86
    const-string v0, "libsrvmgr64.so"

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/if;->ax(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/if;->ry:Ljava/lang/String;

    .line 88
    const-string v0, "daemon.jar"

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/if;->ax(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/if;->rz:Ljava/lang/String;

    .line 89
    const-string v0, "zgo.jar"

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/if;->ax(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/if;->rA:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingroot/kinguser/if;->rq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "40276.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/if;->rB:Ljava/lang/String;

    .line 92
    const-string v0, "libpm.so"

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/if;->ax(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/if;->rC:Ljava/lang/String;

    .line 94
    const-string v0, "uranus"

    iput-object v0, p0, Lcom/kingroot/kinguser/if;->rr:Ljava/lang/String;

    .line 95
    const-string v0, "daemon"

    iput-object v0, p0, Lcom/kingroot/kinguser/if;->rD:Ljava/lang/String;

    .line 96
    const-string v0, "guard"

    iput-object v0, p0, Lcom/kingroot/kinguser/if;->rE:Ljava/lang/String;

    .line 98
    invoke-static {p1}, Lcom/kingroot/kinguser/if$a;->f(Lcom/kingroot/kinguser/if$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/if;->rN:Z

    .line 99
    invoke-static {p1}, Lcom/kingroot/kinguser/if$a;->g(Lcom/kingroot/kinguser/if$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/if;->rP:Ljava/lang/String;

    .line 100
    invoke-static {p1}, Lcom/kingroot/kinguser/if$a;->h(Lcom/kingroot/kinguser/if$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/if;->rQ:Ljava/lang/String;

    .line 101
    invoke-static {p1}, Lcom/kingroot/kinguser/if$a;->i(Lcom/kingroot/kinguser/if$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/if;->rR:Ljava/lang/String;

    .line 102
    invoke-static {p1}, Lcom/kingroot/kinguser/if$a;->j(Lcom/kingroot/kinguser/if$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/if;->rO:Z

    .line 104
    invoke-direct {p0}, Lcom/kingroot/kinguser/if;->bu()V

    .line 106
    invoke-static {p1}, Lcom/kingroot/kinguser/if$a;->k(Lcom/kingroot/kinguser/if$a;)Lcom/kingroot/kinguser/hg;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/if;->rF:Lcom/kingroot/kinguser/hg;

    .line 107
    invoke-static {p1}, Lcom/kingroot/kinguser/if$a;->l(Lcom/kingroot/kinguser/if$a;)Lcom/kingroot/kinguser/hz;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/if;->rI:Lcom/kingroot/kinguser/hz;

    .line 109
    invoke-static {p1}, Lcom/kingroot/kinguser/if$a;->m(Lcom/kingroot/kinguser/if$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/if;->rM:Ljava/lang/String;

    .line 111
    invoke-static {p1}, Lcom/kingroot/kinguser/if$a;->n(Lcom/kingroot/kinguser/if$a;)Lcom/kingroot/kinguser/hp;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/if;->rJ:Lcom/kingroot/kinguser/hp;

    .line 113
    invoke-static {p1}, Lcom/kingroot/kinguser/if$a;->o(Lcom/kingroot/kinguser/if$a;)Lcom/kingroot/kinguser/hj;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/if;->rK:Lcom/kingroot/kinguser/hj;

    .line 115
    invoke-static {p1}, Lcom/kingroot/kinguser/if$a;->p(Lcom/kingroot/kinguser/if$a;)Lcom/kingroot/kinguser/hr;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/if;->rG:Lcom/kingroot/kinguser/hr;

    .line 116
    invoke-static {p1}, Lcom/kingroot/kinguser/if$a;->q(Lcom/kingroot/kinguser/if$a;)Lcom/kingroot/kinguser/he;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/if;->rH:Lcom/kingroot/kinguser/he;

    .line 118
    const/16 v0, 0x8

    iput v0, p0, Lcom/kingroot/kinguser/if;->rS:I

    .line 119
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/if$a;Lcom/kingroot/kinguser/ig;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/if;-><init>(Lcom/kingroot/kinguser/if$a;)V

    return-void
.end method

.method private ax(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingroot/kinguser/if;->rq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/if;->rp:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/kingroot/kinguser/kl;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private bu()V
    .locals 6

    .prologue
    .line 126
    invoke-static {}, Lcom/kingroot/kinguser/mf;->ev()I

    move-result v0

    .line 127
    invoke-static {}, Lcom/kingroot/kinguser/mf;->ey()Z

    move-result v1

    .line 129
    const/16 v2, 0x15

    if-lt v0, v2, :cond_2

    .line 130
    iget-object v2, p0, Lcom/kingroot/kinguser/if;->rL:Ljava/util/Map;

    const-string v3, "ipme_pie"

    new-instance v4, Lcom/kingroot/kinguser/ks;

    iget-object v5, p0, Lcom/kingroot/kinguser/if;->rt:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/kingroot/kinguser/ks;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    if-eqz v1, :cond_0

    .line 133
    iget-object v2, p0, Lcom/kingroot/kinguser/if;->rL:Ljava/util/Map;

    const-string v3, "ipme64"

    new-instance v4, Lcom/kingroot/kinguser/ks;

    iget-object v5, p0, Lcom/kingroot/kinguser/if;->ru:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/kingroot/kinguser/ks;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_0
    :goto_0
    const/16 v2, 0x17

    if-lt v0, v2, :cond_3

    .line 141
    iget-object v0, p0, Lcom/kingroot/kinguser/if;->rL:Ljava/util/Map;

    const-string v2, "libclient_60.so"

    new-instance v3, Lcom/kingroot/kinguser/ks;

    iget-object v4, p0, Lcom/kingroot/kinguser/if;->rv:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/kingroot/kinguser/ks;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/kingroot/kinguser/if;->rL:Ljava/util/Map;

    const-string v2, "libsrvmgr_60.so"

    new-instance v3, Lcom/kingroot/kinguser/ks;

    iget-object v4, p0, Lcom/kingroot/kinguser/if;->rx:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/kingroot/kinguser/ks;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    if-eqz v1, :cond_1

    .line 145
    iget-object v0, p0, Lcom/kingroot/kinguser/if;->rL:Ljava/util/Map;

    const-string v1, "libclient64_60.so"

    new-instance v2, Lcom/kingroot/kinguser/ks;

    iget-object v3, p0, Lcom/kingroot/kinguser/if;->rw:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/kingroot/kinguser/ks;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/kingroot/kinguser/if;->rL:Ljava/util/Map;

    const-string v1, "libsrvmgr64_60.so"

    new-instance v2, Lcom/kingroot/kinguser/ks;

    iget-object v3, p0, Lcom/kingroot/kinguser/if;->ry:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/kingroot/kinguser/ks;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kinguser/if;->rL:Ljava/util/Map;

    const-string v1, "40276.dat"

    new-instance v2, Lcom/kingroot/kinguser/ks;

    iget-object v3, p0, Lcom/kingroot/kinguser/if;->rB:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/ks;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lcom/kingroot/kinguser/if;->rL:Ljava/util/Map;

    const-string v1, "daemon.jar"

    new-instance v2, Lcom/kingroot/kinguser/ks;

    iget-object v3, p0, Lcom/kingroot/kinguser/if;->rz:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/kingroot/kinguser/ks;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/kingroot/kinguser/if;->rL:Ljava/util/Map;

    const-string v1, "zgo.jar"

    new-instance v2, Lcom/kingroot/kinguser/ks;

    iget-object v3, p0, Lcom/kingroot/kinguser/if;->rA:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/kingroot/kinguser/ks;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    return-void

    .line 136
    :cond_2
    iget-object v2, p0, Lcom/kingroot/kinguser/if;->rL:Ljava/util/Map;

    const-string v3, "ipme"

    new-instance v4, Lcom/kingroot/kinguser/ks;

    iget-object v5, p0, Lcom/kingroot/kinguser/if;->rt:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/kingroot/kinguser/ks;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 149
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/if;->rL:Ljava/util/Map;

    const-string v2, "libclient.so"

    new-instance v3, Lcom/kingroot/kinguser/ks;

    iget-object v4, p0, Lcom/kingroot/kinguser/if;->rv:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/kingroot/kinguser/ks;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/kingroot/kinguser/if;->rL:Ljava/util/Map;

    const-string v2, "libsrvmgr.so"

    new-instance v3, Lcom/kingroot/kinguser/ks;

    iget-object v4, p0, Lcom/kingroot/kinguser/if;->rx:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/kingroot/kinguser/ks;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    if-eqz v1, :cond_1

    .line 153
    iget-object v0, p0, Lcom/kingroot/kinguser/if;->rL:Ljava/util/Map;

    const-string v1, "libclient64_50.so"

    new-instance v2, Lcom/kingroot/kinguser/ks;

    iget-object v3, p0, Lcom/kingroot/kinguser/if;->rw:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/kingroot/kinguser/ks;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lcom/kingroot/kinguser/if;->rL:Ljava/util/Map;

    const-string v1, "libsrvmgr64_50.so"

    new-instance v2, Lcom/kingroot/kinguser/ks;

    iget-object v3, p0, Lcom/kingroot/kinguser/if;->ry:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/kingroot/kinguser/ks;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static n(Landroid/content/Context;)Lcom/kingroot/kinguser/if$a;
    .locals 2

    .prologue
    .line 241
    new-instance v0, Lcom/kingroot/kinguser/if$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/if$a;-><init>(Landroid/content/Context;Lcom/kingroot/kinguser/ig;)V

    return-object v0
.end method


# virtual methods
.method public bA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/kingroot/kinguser/if;->rw:Ljava/lang/String;

    return-object v0
.end method

.method public bB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/kingroot/kinguser/if;->rx:Ljava/lang/String;

    return-object v0
.end method

.method public bC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/kingroot/kinguser/if;->ry:Ljava/lang/String;

    return-object v0
.end method

.method public bD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/kingroot/kinguser/if;->rz:Ljava/lang/String;

    return-object v0
.end method

.method public bE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/kingroot/kinguser/if;->rA:Ljava/lang/String;

    return-object v0
.end method

.method public bF()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/kingroot/kinguser/if;->rp:Ljava/lang/String;

    return-object v0
.end method

.method public bG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/kingroot/kinguser/if;->rq:Ljava/lang/String;

    return-object v0
.end method

.method public bH()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/kingroot/kinguser/if;->rr:Ljava/lang/String;

    return-object v0
.end method

.method public bI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/kingroot/kinguser/if;->rE:Ljava/lang/String;

    return-object v0
.end method

.method public bJ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/kingroot/kinguser/if;->rD:Ljava/lang/String;

    return-object v0
.end method

.method public bK()Lcom/kingroot/kinguser/hg;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/kingroot/kinguser/if;->rF:Lcom/kingroot/kinguser/hg;

    return-object v0
.end method

.method public bL()Lcom/kingroot/kinguser/hz;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/kingroot/kinguser/if;->rI:Lcom/kingroot/kinguser/hz;

    return-object v0
.end method

.method public bM()Lcom/kingroot/kinguser/hp;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/kingroot/kinguser/if;->rJ:Lcom/kingroot/kinguser/hp;

    return-object v0
.end method

.method public bN()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/kingroot/kinguser/if;->rN:Z

    return v0
.end method

.method public bO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/kingroot/kinguser/if;->rP:Ljava/lang/String;

    return-object v0
.end method

.method public bP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/kingroot/kinguser/if;->rQ:Ljava/lang/String;

    return-object v0
.end method

.method public bQ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/kingroot/kinguser/if;->rR:Ljava/lang/String;

    return-object v0
.end method

.method public bR()Lcom/kingroot/kinguser/hj;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/kingroot/kinguser/if;->rK:Lcom/kingroot/kinguser/hj;

    return-object v0
.end method

.method public bS()Lcom/kingroot/kinguser/hr;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/kingroot/kinguser/if;->rG:Lcom/kingroot/kinguser/hr;

    return-object v0
.end method

.method public bT()Lcom/kingroot/kinguser/he;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/kingroot/kinguser/if;->rH:Lcom/kingroot/kinguser/he;

    return-object v0
.end method

.method public bU()Z
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/kingroot/kinguser/if;->rO:Z

    return v0
.end method

.method public bt()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/kingroot/kinguser/if;->rS:I

    return v0
.end method

.method public bv()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/ks;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/kingroot/kinguser/if;->rL:Ljava/util/Map;

    return-object v0
.end method

.method public bw()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/kingroot/kinguser/if;->rs:Ljava/lang/String;

    return-object v0
.end method

.method public bx()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/kingroot/kinguser/if;->rt:Ljava/lang/String;

    return-object v0
.end method

.method public by()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/kingroot/kinguser/if;->ru:Ljava/lang/String;

    return-object v0
.end method

.method public bz()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/kingroot/kinguser/if;->rv:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/kingroot/kinguser/if;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/kingroot/kinguser/if;->mPackageName:Ljava/lang/String;

    return-object v0
.end method
