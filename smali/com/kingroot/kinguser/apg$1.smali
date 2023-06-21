.class Lcom/kingroot/kinguser/apg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/apg;->aX(Landroid/content/Context;)Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aHH:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

.field final synthetic aHI:Lcom/kingroot/kinguser/apg;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/apg;Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/kingroot/kinguser/apg$1;->aHI:Lcom/kingroot/kinguser/apg;

    iput-object p2, p0, Lcom/kingroot/kinguser/apg$1;->aHH:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/kingroot/kinguser/apg$1;->aHH:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->reset()V

    .line 114
    iget-object v0, p0, Lcom/kingroot/kinguser/apg$1;->aHI:Lcom/kingroot/kinguser/apg;

    invoke-static {v0}, Lcom/kingroot/kinguser/apg;->a(Lcom/kingroot/kinguser/apg;)Lcom/kingroot/kinguser/apg$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/apg$a;->onDismiss()V

    .line 115
    return-void
.end method
