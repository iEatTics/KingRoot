.class Lcom/kingroot/kinguser/vt$a;
.super Lcom/kingroot/kinguser/vn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/vt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/kingroot/kinguser/vn;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/vt$1;)V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/kingroot/kinguser/vt$a;-><init>()V

    return-void
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
    .line 216
    invoke-static {}, Lcom/kingroot/kinguser/vt;->lT()Lcom/kingroot/kinguser/vt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/vt;->D(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method protected getChannel()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 205
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ib()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getProductId()I
    .locals 1

    .prologue
    .line 211
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hY()I

    move-result v0

    return v0
.end method

.method protected lA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    const-string v0, "KingLib"

    return-object v0
.end method

.method protected lL()[I
    .locals 1

    .prologue
    .line 183
    invoke-static {}, Lcom/kingroot/kinguser/vt;->access$400()[I

    move-result-object v0

    return-object v0
.end method

.method protected lM()[I
    .locals 1

    .prologue
    .line 188
    invoke-static {}, Lcom/kingroot/kinguser/vt;->access$500()[I

    move-result-object v0

    return-object v0
.end method

.method protected lN()[I
    .locals 1

    .prologue
    .line 193
    invoke-static {}, Lcom/kingroot/kinguser/vt;->lX()[I

    move-result-object v0

    return-object v0
.end method
