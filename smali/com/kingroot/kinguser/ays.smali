.class public Lcom/kingroot/kinguser/ays;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/ays;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/kingroot/kinguser/ays$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ays$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ays;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Vf()Lcom/kingroot/kinguser/ays;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/kingroot/kinguser/ays;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ays;

    return-object v0
.end method


# virtual methods
.method public J(Ljava/lang/String;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 47
    .line 49
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->O(Landroid/content/Context;)B

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "Replace"

    .line 47
    invoke-static {p1, v1, v0, v2}, Lcom/kingroot/kinguser/apd;->a(Ljava/lang/String;IILjava/lang/String;)V

    .line 52
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public kb(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 27
    const-string v0, "Replace"

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/apd;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public kc(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 31
    const-string v0, "Replace"

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/apd;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public kd(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 35
    const/4 v0, 0x1

    const-string v1, "Replace"

    invoke-static {p1, v0, v1}, Lcom/kingroot/kinguser/apd;->c(Ljava/lang/String;ILjava/lang/String;)V

    .line 36
    return-void
.end method

.method public ke(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x1

    const-string v1, "Replace"

    invoke-static {p1, v0, v1}, Lcom/kingroot/kinguser/apd;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 40
    return-void
.end method

.method public kf(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 43
    const/4 v0, 0x1

    const-string v1, "Replace"

    invoke-static {p1, v0, v1}, Lcom/kingroot/kinguser/apd;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 44
    return-void
.end method

.method public kg(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 55
    const-string v0, "Replace"

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/apd;->ap(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public kh(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 59
    const-string v0, "Replace"

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/apd;->aq(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public ki(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 63
    const-string v0, "Replace"

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/apd;->ar(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method
