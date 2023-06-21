.class Lcom/kingroot/kinguser/ayb$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ayb;->oG()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/ayb;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ayb;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/kingroot/kinguser/ayb$1;->this$0:Lcom/kingroot/kinguser/ayb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb$1;->this$0:Lcom/kingroot/kinguser/ayb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/ayb;->a(Lcom/kingroot/kinguser/ayb;Z)V

    .line 212
    invoke-static {}, Lcom/kingroot/kinguser/als;->Hi()Lcom/kingroot/kinguser/amt;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ayb$1;->this$0:Lcom/kingroot/kinguser/ayb;

    invoke-static {v1}, Lcom/kingroot/kinguser/ayb;->d(Lcom/kingroot/kinguser/ayb;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    move-result-object v1

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/amt;->C(Ljava/lang/String;I)V

    .line 213
    return-void
.end method
