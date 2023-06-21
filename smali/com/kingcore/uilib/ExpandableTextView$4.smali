.class Lcom/kingcore/uilib/ExpandableTextView$4;
.super Lcom/android/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingcore/uilib/ExpandableTextView;->gH()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic AM:Lcom/kingcore/uilib/ExpandableTextView;


# direct methods
.method constructor <init>(Lcom/kingcore/uilib/ExpandableTextView;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/kingcore/uilib/ExpandableTextView$4;->AM:Lcom/kingcore/uilib/ExpandableTextView;

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 198
    iget-object v0, p0, Lcom/kingcore/uilib/ExpandableTextView$4;->AM:Lcom/kingcore/uilib/ExpandableTextView;

    iget-object v1, p0, Lcom/kingcore/uilib/ExpandableTextView$4;->AM:Lcom/kingcore/uilib/ExpandableTextView;

    invoke-static {v1}, Lcom/kingcore/uilib/ExpandableTextView;->a(Lcom/kingcore/uilib/ExpandableTextView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ExpandableTextView;->setMaxLines(I)V

    .line 202
    iget-object v0, p0, Lcom/kingcore/uilib/ExpandableTextView$4;->AM:Lcom/kingcore/uilib/ExpandableTextView;

    invoke-virtual {v0}, Lcom/kingcore/uilib/ExpandableTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 203
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 204
    iget-object v1, p0, Lcom/kingcore/uilib/ExpandableTextView$4;->AM:Lcom/kingcore/uilib/ExpandableTextView;

    invoke-virtual {v1, v0}, Lcom/kingcore/uilib/ExpandableTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iget-object v0, p0, Lcom/kingcore/uilib/ExpandableTextView$4;->AM:Lcom/kingcore/uilib/ExpandableTextView;

    invoke-static {v0, v2}, Lcom/kingcore/uilib/ExpandableTextView;->a(Lcom/kingcore/uilib/ExpandableTextView;Z)Z

    .line 208
    iget-object v0, p0, Lcom/kingcore/uilib/ExpandableTextView$4;->AM:Lcom/kingcore/uilib/ExpandableTextView;

    invoke-static {v0, v2}, Lcom/kingcore/uilib/ExpandableTextView;->b(Lcom/kingcore/uilib/ExpandableTextView;Z)Z

    .line 209
    return-void
.end method
