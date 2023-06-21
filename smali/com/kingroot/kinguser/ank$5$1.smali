.class Lcom/kingroot/kinguser/ank$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ank$5;->b(Lcom/kingcore/uilib/ExpandableTextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aBu:Lcom/kingroot/kinguser/ank$5;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ank$5;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/kingroot/kinguser/ank$5$1;->aBu:Lcom/kingroot/kinguser/ank$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/kingroot/kinguser/ank$5$1;->aBu:Lcom/kingroot/kinguser/ank$5;

    iget-object v0, v0, Lcom/kingroot/kinguser/ank$5;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-static {v0}, Lcom/kingroot/kinguser/ank;->d(Lcom/kingroot/kinguser/ank;)Lcom/kingroot/common/uilib/NestedScrollView;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kingroot/kinguser/ank$5$1;->aBu:Lcom/kingroot/kinguser/ank$5;

    iget-object v2, v2, Lcom/kingroot/kinguser/ank$5;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-static {v2}, Lcom/kingroot/kinguser/ank;->c(Lcom/kingroot/kinguser/ank;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/common/uilib/NestedScrollView;->smoothScrollTo(II)V

    .line 250
    return-void
.end method
