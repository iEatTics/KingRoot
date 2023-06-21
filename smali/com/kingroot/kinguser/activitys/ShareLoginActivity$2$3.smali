.class Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bid$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aiV:Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2$3;->aiV:Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 199
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    invoke-direct {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;-><init>()V

    .line 200
    const-string v1, "com.tencent.mm"

    iput-object v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    .line 201
    iget-object v1, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2$3;->aiV:Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;

    iget-object v1, v1, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;->aiT:Lcom/kingroot/kinguser/activitys/ShareLoginActivity;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/activitys/AppDetailActivity;->a(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    .line 202
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2$3;->aiV:Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;->aiT:Lcom/kingroot/kinguser/activitys/ShareLoginActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->e(Lcom/kingroot/kinguser/activitys/ShareLoginActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2$3;->aiV:Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;->aiT:Lcom/kingroot/kinguser/activitys/ShareLoginActivity;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->finish()V

    .line 205
    :cond_0
    return-void
.end method
