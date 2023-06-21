.class Lcom/kingroot/kinguser/axl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/axl;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axl;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/kingroot/kinguser/axl$1;->this$0:Lcom/kingroot/kinguser/axl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/kingroot/kinguser/axl$1;->this$0:Lcom/kingroot/kinguser/axl;

    invoke-static {v0}, Lcom/kingroot/kinguser/axl;->b(Lcom/kingroot/kinguser/axl;)Lcom/kingroot/kinguser/yn$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/yn$a;->oX()Ljava/util/List;

    move-result-object v0

    .line 154
    if-ltz p3, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_0

    .line 155
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/yn$b;

    iget-object v0, v0, Lcom/kingroot/kinguser/yn$b;->data:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/aub;

    .line 156
    iget-boolean v1, v0, Lcom/kingroot/kinguser/aub;->aQT:Z

    if-nez v1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget v1, v0, Lcom/kingroot/kinguser/aub;->visible:I

    and-int/lit8 v1, v1, 0x40

    .line 161
    if-lez v1, :cond_2

    .line 162
    const/16 v1, 0x11

    iput v1, v0, Lcom/kingroot/kinguser/aub;->visible:I

    .line 165
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x186c5

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 170
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kinguser/axl$1;->this$0:Lcom/kingroot/kinguser/axl;

    invoke-static {v0}, Lcom/kingroot/kinguser/axl;->c(Lcom/kingroot/kinguser/axl;)V

    .line 172
    iget-object v0, p0, Lcom/kingroot/kinguser/axl$1;->this$0:Lcom/kingroot/kinguser/axl;

    invoke-static {v0}, Lcom/kingroot/kinguser/axl;->d(Lcom/kingroot/kinguser/axl;)Lcom/kingroot/common/uilib/template/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/template/PinnedHeaderListView;->getLastVisiblePosition()I

    move-result v0

    if-ne v0, p3, :cond_0

    .line 173
    iget-object v0, p0, Lcom/kingroot/kinguser/axl$1;->this$0:Lcom/kingroot/kinguser/axl;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 168
    :cond_2
    const/16 v1, 0x41

    iput v1, v0, Lcom/kingroot/kinguser/aub;->visible:I

    goto :goto_1
.end method
