.class public Lcom/kingroot/kinguser/biw$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/biw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field ajP:Landroid/widget/TextView;

.field bva:Lcom/kingcore/uilib/TimeLineView;

.field bvb:Landroid/view/View;

.field final synthetic bvc:Lcom/kingroot/kinguser/biw;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/biw;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 55
    iput-object p1, p0, Lcom/kingroot/kinguser/biw$a;->bvc:Lcom/kingroot/kinguser/biw;

    .line 56
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 57
    const v0, 0x7f0f0148

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/TimeLineView;

    iput-object v0, p0, Lcom/kingroot/kinguser/biw$a;->bva:Lcom/kingcore/uilib/TimeLineView;

    .line 58
    const v0, 0x7f0f0231

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/biw$a;->bvb:Landroid/view/View;

    .line 59
    const v0, 0x7f0f0232

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/biw$a;->ajP:Landroid/widget/TextView;

    .line 60
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/biw$b;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 63
    if-eqz p1, :cond_0

    .line 64
    iget v0, p1, Lcom/kingroot/kinguser/biw$b;->type:I

    packed-switch v0, :pswitch_data_0

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 66
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/biw$a;->bva:Lcom/kingcore/uilib/TimeLineView;

    invoke-static {}, Lcom/kingroot/kinguser/biw;->access$000()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/kingcore/uilib/TimeLineView;->s(II)V

    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/biw$a;->ajP:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/biw;->access$000()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/biw$a;->bva:Lcom/kingcore/uilib/TimeLineView;

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/TimeLineView;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/biw$a;->bvb:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/kingroot/kinguser/biw$a;->ajP:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/kingroot/kinguser/biw$b;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 75
    :pswitch_2
    iget-object v0, p0, Lcom/kingroot/kinguser/biw$a;->bva:Lcom/kingcore/uilib/TimeLineView;

    invoke-virtual {v0, v3}, Lcom/kingcore/uilib/TimeLineView;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/kingroot/kinguser/biw$a;->bvb:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/kingroot/kinguser/biw$a;->ajP:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
