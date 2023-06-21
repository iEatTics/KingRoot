.class Lcom/kingcore/uilib/ExpandableTextView$2;
.super Lcom/android/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingcore/uilib/ExpandableTextView;->gG()Z
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
    .line 139
    iput-object p1, p0, Lcom/kingcore/uilib/ExpandableTextView$2;->AM:Lcom/kingcore/uilib/ExpandableTextView;

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/kingcore/uilib/ExpandableTextView$2;->AM:Lcom/kingcore/uilib/ExpandableTextView;

    invoke-virtual {v0}, Lcom/kingcore/uilib/ExpandableTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 145
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 146
    iget-object v1, p0, Lcom/kingcore/uilib/ExpandableTextView$2;->AM:Lcom/kingcore/uilib/ExpandableTextView;

    invoke-virtual {v1, v0}, Lcom/kingcore/uilib/ExpandableTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    iget-object v0, p0, Lcom/kingcore/uilib/ExpandableTextView$2;->AM:Lcom/kingcore/uilib/ExpandableTextView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingcore/uilib/ExpandableTextView;->a(Lcom/kingcore/uilib/ExpandableTextView;Z)Z

    .line 150
    iget-object v0, p0, Lcom/kingcore/uilib/ExpandableTextView$2;->AM:Lcom/kingcore/uilib/ExpandableTextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingcore/uilib/ExpandableTextView;->b(Lcom/kingcore/uilib/ExpandableTextView;Z)Z

    .line 151
    return-void
.end method
