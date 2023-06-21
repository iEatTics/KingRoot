.class public Lcom/kingroot/kinguser/mc;
.super Lcom/kingroot/kinguser/jq;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private rH:Lcom/kingroot/kinguser/he;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uranus_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/kingroot/kinguser/mc;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/mc;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/kingroot/kinguser/jq;-><init>()V

    .line 32
    invoke-static {}, Lcom/kingroot/kinguser/ih;->bW()Lcom/kingroot/kinguser/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/if;->bT()Lcom/kingroot/kinguser/he;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/mc;->rH:Lcom/kingroot/kinguser/he;

    .line 33
    return-void
.end method

.method private a(Lcom/kingroot/kinguser/ha;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 94
    invoke-static {p2}, Lcom/kingroot/kinguser/mc;->bp(Ljava/lang/String;)Z

    move-result v0

    .line 97
    invoke-interface {p1}, Lcom/kingroot/kinguser/ha;->aJ()I

    move-result v1

    .line 98
    invoke-interface {p1}, Lcom/kingroot/kinguser/ha;->aO()I

    move-result v2

    .line 99
    packed-switch v1, :pswitch_data_0

    .line 113
    :pswitch_0
    if-eqz v0, :cond_3

    .line 114
    const/high16 v0, 0x2010000

    add-int/2addr v0, v1

    .line 121
    :goto_0
    const-string v3, "zygote"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 122
    invoke-static {}, Lcom/kingroot/kinguser/mx;->eL()Lcom/kingroot/kinguser/mx;

    move-result-object v3

    invoke-virtual {v3, v6, v0, v2}, Lcom/kingroot/kinguser/mx;->b(III)V

    .line 135
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/no;->fl()Lcom/kingroot/kinguser/no;

    move-result-object v0

    new-instance v2, Lcom/kingroot/kinguser/md;

    invoke-direct {v2, p0, p2}, Lcom/kingroot/kinguser/md;-><init>(Lcom/kingroot/kinguser/mc;Ljava/lang/String;)V

    sget-wide v4, Lcom/kingroot/kinguser/lt;->vn:J

    invoke-virtual {v0, v2, v4, v5}, Lcom/kingroot/kinguser/no;->a(Lcom/kingroot/kinguser/nj;J)V

    .line 145
    if-ne v1, v6, :cond_0

    .line 146
    invoke-static {}, Lcom/kingroot/kinguser/lq;->dW()Lcom/kingroot/kinguser/lq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/lq;->dY()V

    .line 148
    :cond_0
    return-void

    .line 102
    :pswitch_1
    if-eqz v0, :cond_1

    const/high16 v0, 0x2030000

    .line 103
    :goto_2
    invoke-static {p1}, Lcom/kingroot/kinguser/lk;->a(Lcom/kingroot/kinguser/ha;)S

    move-result v3

    .line 102
    invoke-static {v0, v3}, Lcom/kingroot/kinguser/lk;->c(II)I

    move-result v0

    .line 104
    invoke-static {}, Lcom/kingroot/kinguser/lq;->dW()Lcom/kingroot/kinguser/lq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingroot/kinguser/lq;->ea()V

    goto :goto_0

    .line 102
    :cond_1
    const/high16 v0, 0x3030000

    goto :goto_2

    .line 108
    :pswitch_2
    if-eqz v0, :cond_2

    const/high16 v0, 0x2020000

    .line 109
    :goto_3
    invoke-static {p1}, Lcom/kingroot/kinguser/lk;->a(Lcom/kingroot/kinguser/ha;)S

    move-result v3

    .line 108
    invoke-static {v0, v3}, Lcom/kingroot/kinguser/lk;->c(II)I

    move-result v0

    goto :goto_0

    :cond_2
    const/high16 v0, 0x3020000

    goto :goto_3

    .line 116
    :cond_3
    const/high16 v0, 0x3010000

    add-int/2addr v0, v1

    goto :goto_0

    .line 124
    :cond_4
    const-string v3, "zygote64"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 125
    invoke-static {}, Lcom/kingroot/kinguser/mx;->eL()Lcom/kingroot/kinguser/mx;

    move-result-object v3

    const/16 v4, 0x67

    invoke-virtual {v3, v4, v0, v2}, Lcom/kingroot/kinguser/mx;->b(III)V

    goto :goto_1

    .line 128
    :cond_5
    invoke-static {}, Lcom/kingroot/kinguser/mx;->eL()Lcom/kingroot/kinguser/mx;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v0, v2}, Lcom/kingroot/kinguser/mx;->b(III)V

    goto :goto_1

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static bh(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 36
    invoke-static {p0}, Lcom/kingroot/kinguser/mc;->bp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "system_server"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bo(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/high16 v4, 0x2010000

    .line 54
    invoke-static {}, Lcom/kingroot/kinguser/la;->dp()Lcom/kingroot/kinguser/la;

    move-result-object v0

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, p1, v2, v3}, Lcom/kingroot/kinguser/la;->setSpecialProcessCrashStrategy(Ljava/lang/String;J)I

    .line 59
    const-string v0, "zygote"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Lcom/kingroot/kinguser/mx;->eL()Lcom/kingroot/kinguser/mx;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Lcom/kingroot/kinguser/mx;->f(II)V

    .line 72
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/lt;->eg()Lcom/kingroot/kinguser/lt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/lt;->bi(Ljava/lang/String;)V

    .line 73
    return-void

    .line 62
    :cond_0
    const-string v0, "zygote64"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    invoke-static {}, Lcom/kingroot/kinguser/mx;->eL()Lcom/kingroot/kinguser/mx;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1, v4}, Lcom/kingroot/kinguser/mx;->f(II)V

    goto :goto_0

    .line 66
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/mx;->eL()Lcom/kingroot/kinguser/mx;

    move-result-object v0

    const/4 v1, 0x4

    const/high16 v2, 0x3010000

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/mx;->f(II)V

    goto :goto_0
.end method

.method private static bp(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 76
    const-string v0, "zygote"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "zygote64"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/jr;Lcom/kingroot/kinguser/ha;)V
    .locals 3

    .prologue
    .line 81
    invoke-interface {p1}, Lcom/kingroot/kinguser/jr;->cG()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v0}, Lcom/kingroot/kinguser/mc;->bh(Ljava/lang/String;)Z

    move-result v1

    .line 84
    iget-object v2, p0, Lcom/kingroot/kinguser/mc;->rH:Lcom/kingroot/kinguser/he;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kingroot/kinguser/mc;->rH:Lcom/kingroot/kinguser/he;

    invoke-interface {v2, v0, p2}, Lcom/kingroot/kinguser/he;->a(Ljava/lang/String;Lcom/kingroot/kinguser/ha;)V

    .line 87
    :cond_0
    if-eqz v1, :cond_1

    .line 88
    invoke-direct {p0, p2, v0}, Lcom/kingroot/kinguser/mc;->a(Lcom/kingroot/kinguser/ha;Ljava/lang/String;)V

    .line 91
    :cond_1
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/jr;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0, p1, p2}, Lcom/kingroot/kinguser/jq;->a(Lcom/kingroot/kinguser/jr;Ljava/lang/String;)V

    .line 44
    invoke-interface {p1}, Lcom/kingroot/kinguser/jr;->cG()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/kingroot/kinguser/mc;->bh(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/mc;->bo(Ljava/lang/String;)V

    goto :goto_0
.end method
