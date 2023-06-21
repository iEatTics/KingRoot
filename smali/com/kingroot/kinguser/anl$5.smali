.class Lcom/kingroot/kinguser/anl$5;
.super Lcom/kingroot/kinguser/and$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/anl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/anl;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anl;)V
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lcom/kingroot/kinguser/anl$5;->this$0:Lcom/kingroot/kinguser/anl;

    invoke-direct {p0}, Lcom/kingroot/kinguser/and$a;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V
    .locals 3

    .prologue
    .line 483
    iget-object v0, p0, Lcom/kingroot/kinguser/anl$5;->this$0:Lcom/kingroot/kinguser/anl;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/anl;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p2}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ik()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/anl$5;->this$0:Lcom/kingroot/kinguser/anl;

    invoke-static {v2}, Lcom/kingroot/kinguser/anl;->c(Lcom/kingroot/kinguser/anl;)Lcom/kingroot/kinguser/ano;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/ano;->Jm()Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Lcom/kingroot/kinguser/ang;->a(Landroid/app/Activity;Landroid/widget/ImageView;Landroid/view/View;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)Z

    .line 484
    return-void
.end method
