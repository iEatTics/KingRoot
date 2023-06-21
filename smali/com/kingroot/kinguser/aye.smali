.class public Lcom/kingroot/kinguser/aye;
.super Lcom/kingroot/kinguser/vn;
.source "SourceFile"


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/aye;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/kingroot/kinguser/aye$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aye$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aye;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/kingroot/kinguser/vn;-><init>()V

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/aye$1;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/kingroot/kinguser/aye;-><init>()V

    return-void
.end method

.method public static UP()Lcom/kingroot/kinguser/aye;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/kingroot/kinguser/aye;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aye;

    return-object v0
.end method


# virtual methods
.method protected B(Ljava/util/List;)Z
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/b;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {}, Lcom/kingroot/kinguser/awn;->Ta()Lcom/kingroot/kinguser/awn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/awn;->bG(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method protected getChannel()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 65
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ib()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getProductId()I
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hY()I

    move-result v0

    return v0
.end method

.method protected lA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "External"

    return-object v0
.end method

.method protected lL()[I
    .locals 2

    .prologue
    .line 43
    invoke-static {}, Lcom/kingroot/kinguser/akw;->Gx()Lcom/kingroot/kinguser/akw;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/kingroot/kinguser/akw;->Gy()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akw;->Gz()[I

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/yv;->c([I[I)[I

    move-result-object v0

    return-object v0
.end method

.method protected lM()[I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method protected lN()[I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method
