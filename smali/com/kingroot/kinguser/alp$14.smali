.class Lcom/kingroot/kinguser/alp$14;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alp;->a(ILjava/lang/String;IILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ISearchAppsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ayL:Ljava/lang/String;

.field final synthetic ayM:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ISearchAppsListener;

.field final synthetic ayh:Lcom/kingroot/kinguser/alp;

.field final synthetic val$cid:I

.field final synthetic val$fetchOffset:I

.field final synthetic val$fetchSize:I


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alp;Ljava/lang/String;IIILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ISearchAppsListener;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/kingroot/kinguser/alp$14;->ayh:Lcom/kingroot/kinguser/alp;

    iput-object p2, p0, Lcom/kingroot/kinguser/alp$14;->ayL:Ljava/lang/String;

    iput p3, p0, Lcom/kingroot/kinguser/alp$14;->val$cid:I

    iput p4, p0, Lcom/kingroot/kinguser/alp$14;->val$fetchOffset:I

    iput p5, p0, Lcom/kingroot/kinguser/alp$14;->val$fetchSize:I

    iput-object p6, p0, Lcom/kingroot/kinguser/alp$14;->ayM:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ISearchAppsListener;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 252
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->O(Landroid/content/Context;)B

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 253
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18908

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 258
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/btx;->aid()Lcom/kingroot/kinguser/btx;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/alp$14;->ayL:Ljava/lang/String;

    iget v2, p0, Lcom/kingroot/kinguser/alp$14;->val$fetchSize:I

    iget v3, p0, Lcom/kingroot/kinguser/alp$14;->val$fetchOffset:I

    iget v4, p0, Lcom/kingroot/kinguser/alp$14;->val$cid:I

    new-instance v5, Lcom/kingroot/kinguser/alp$14$1;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/alp$14$1;-><init>(Lcom/kingroot/kinguser/alp$14;)V

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/btx;->a(Ljava/lang/String;IIILcom/kingroot/kinguser/buc;)V

    .line 276
    return-void
.end method
