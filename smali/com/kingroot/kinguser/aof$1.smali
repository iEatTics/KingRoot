.class Lcom/kingroot/kinguser/aof$1;
.super Lcom/kingroot/kinguser/and$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aof;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aof;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aof;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/kingroot/kinguser/aof$1;->this$0:Lcom/kingroot/kinguser/aof;

    invoke-direct {p0}, Lcom/kingroot/kinguser/and$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V
    .locals 4

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Lcom/kingroot/kinguser/and$a;->a(Landroid/view/View;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V

    .line 50
    if-eqz p2, :cond_0

    iget v0, p2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 51
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/kingroot/kinguser/aks;->c(JLjava/lang/String;)V

    .line 53
    :cond_0
    return-void
.end method
