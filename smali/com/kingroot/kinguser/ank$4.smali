.class Lcom/kingroot/kinguser/ank$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ank;->oG()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/ank;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ank;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/kingroot/kinguser/ank$4;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/kingroot/kinguser/ank$4;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-static {v0}, Lcom/kingroot/kinguser/ank;->a(Lcom/kingroot/kinguser/ank;)Lcom/kingcore/uilib/ExpandableTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingcore/uilib/ExpandableTextView;->gI()Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/kingroot/kinguser/ank$4;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-static {v0}, Lcom/kingroot/kinguser/ank;->a(Lcom/kingroot/kinguser/ank;)Lcom/kingcore/uilib/ExpandableTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingcore/uilib/ExpandableTextView;->gG()Z

    .line 237
    :cond_0
    return-void
.end method
