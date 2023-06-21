.class Lcom/kingroot/kinguser/ank$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingcore/uilib/ExpandableTextView$a;


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
    .line 240
    iput-object p1, p0, Lcom/kingroot/kinguser/ank$5;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/kingcore/uilib/ExpandableTextView;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0xc8

    .line 243
    iget-object v0, p0, Lcom/kingroot/kinguser/ank$5;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-static {v0}, Lcom/kingroot/kinguser/ank;->b(Lcom/kingroot/kinguser/ank;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/kingroot/kinguser/ank$5;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-static {v0}, Lcom/kingroot/kinguser/ank;->a(Lcom/kingroot/kinguser/ank;)Lcom/kingcore/uilib/ExpandableTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ank$5;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-static {v1}, Lcom/kingroot/kinguser/ank;->b(Lcom/kingroot/kinguser/ank;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ExpandableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    new-instance v0, Lcom/kingroot/kinguser/ank$5$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/ank$5$1;-><init>(Lcom/kingroot/kinguser/ank$5;)V

    invoke-static {v0, v4, v5}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;J)V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ank$5;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-static {v0}, Lcom/kingroot/kinguser/ank;->e(Lcom/kingroot/kinguser/ank;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x43340000    # 180.0f

    invoke-static {v0, v1, v2, v4, v5}, Lcom/kingroot/kinguser/bhk;->b(Landroid/view/View;FFJ)V

    .line 255
    return-void
.end method

.method public c(Lcom/kingcore/uilib/ExpandableTextView;)V
    .locals 6

    .prologue
    .line 259
    iget-object v0, p0, Lcom/kingroot/kinguser/ank$5;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-static {v0}, Lcom/kingroot/kinguser/ank;->f(Lcom/kingroot/kinguser/ank;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/kingroot/kinguser/ank$5;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-static {v0}, Lcom/kingroot/kinguser/ank;->a(Lcom/kingroot/kinguser/ank;)Lcom/kingcore/uilib/ExpandableTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ank$5;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-static {v1}, Lcom/kingroot/kinguser/ank;->f(Lcom/kingroot/kinguser/ank;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ExpandableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ank$5;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-static {v0}, Lcom/kingroot/kinguser/ank;->e(Lcom/kingroot/kinguser/ank;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x43340000    # 180.0f

    const/4 v2, 0x0

    const-wide/16 v4, 0xc8

    invoke-static {v0, v1, v2, v4, v5}, Lcom/kingroot/kinguser/bhk;->b(Landroid/view/View;FFJ)V

    .line 263
    return-void
.end method
