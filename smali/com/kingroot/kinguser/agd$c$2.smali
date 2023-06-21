.class Lcom/kingroot/kinguser/agd$c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/agd$c;->c(Lcom/kingroot/kinguser/agd$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic akW:Lcom/kingroot/kinguser/agd$c;

.field final synthetic akX:Lcom/kingroot/kinguser/agd$a;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/agd$c;Lcom/kingroot/kinguser/agd$a;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/kingroot/kinguser/agd$c$2;->akW:Lcom/kingroot/kinguser/agd$c;

    iput-object p2, p0, Lcom/kingroot/kinguser/agd$c$2;->akX:Lcom/kingroot/kinguser/agd$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 260
    iget-object v0, p0, Lcom/kingroot/kinguser/agd$c$2;->akX:Lcom/kingroot/kinguser/agd$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/agd$a;->akO:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    const-string v1, "DefaultSetting"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/apd;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/kingroot/kinguser/agd$c$2;->akW:Lcom/kingroot/kinguser/agd$c;

    iget-object v0, v0, Lcom/kingroot/kinguser/agd$c;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/agd$c$2;->akX:Lcom/kingroot/kinguser/agd$a;

    iget-object v1, v1, Lcom/kingroot/kinguser/agd$a;->akO:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v2, p0, Lcom/kingroot/kinguser/agd$c$2;->akW:Lcom/kingroot/kinguser/agd$c;

    iget-object v2, v2, Lcom/kingroot/kinguser/agd$c;->akG:Lcom/kingroot/kinguser/agd;

    iget-object v2, v2, Lcom/kingroot/kinguser/agd;->akA:Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;

    iget-object v3, p0, Lcom/kingroot/kinguser/agd$c$2;->akW:Lcom/kingroot/kinguser/agd$c;

    iget-object v3, v3, Lcom/kingroot/kinguser/agd$c;->akG:Lcom/kingroot/kinguser/agd;

    iget-object v3, v3, Lcom/kingroot/kinguser/agd;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    iget-object v4, p0, Lcom/kingroot/kinguser/agd$c$2;->akW:Lcom/kingroot/kinguser/agd$c;

    iget-object v4, v4, Lcom/kingroot/kinguser/agd$c;->akG:Lcom/kingroot/kinguser/agd;

    .line 262
    invoke-static {v4}, Lcom/kingroot/kinguser/agd;->c(Lcom/kingroot/kinguser/agd;)Lcom/kingroot/kinguser/and$a;

    move-result-object v4

    .line 261
    invoke-static {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/and;->a(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;Lcom/kingroot/kinguser/and$a;)V

    .line 263
    return-void
.end method
