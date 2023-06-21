.class public Lcom/kingroot/common/uilib/MarqueeView;
.super Landroid/widget/ViewFlipper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/common/uilib/MarqueeView$a;
    }
.end annotation


# instance fields
.field private Po:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private Pp:Z

.field private Pq:Lcom/kingroot/common/uilib/MarqueeView$a;

.field private Pr:I

.field private Ps:Z

.field private gravity:I

.field private hX:I

.field private mContext:Landroid/content/Context;

.field private textColor:I

.field private textSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput-boolean v1, p0, Lcom/kingroot/common/uilib/MarqueeView;->Pp:Z

    .line 33
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/kingroot/common/uilib/MarqueeView;->hX:I

    .line 34
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/kingroot/common/uilib/MarqueeView;->Pr:I

    .line 35
    const/16 v0, 0xb

    iput v0, p0, Lcom/kingroot/common/uilib/MarqueeView;->textSize:I

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/common/uilib/MarqueeView;->textColor:I

    .line 38
    iput-boolean v1, p0, Lcom/kingroot/common/uilib/MarqueeView;->Ps:Z

    .line 39
    const/16 v0, 0x13

    iput v0, p0, Lcom/kingroot/common/uilib/MarqueeView;->gravity:I

    .line 44
    invoke-direct {p0, p1, p2, v1}, Lcom/kingroot/common/uilib/MarqueeView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method private a(Ljava/lang/CharSequence;I)Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 164
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kingroot/common/uilib/MarqueeView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 165
    iget v1, p0, Lcom/kingroot/common/uilib/MarqueeView;->gravity:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 166
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget v1, p0, Lcom/kingroot/common/uilib/MarqueeView;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    iget v1, p0, Lcom/kingroot/common/uilib/MarqueeView;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 169
    iget-boolean v1, p0, Lcom/kingroot/common/uilib/MarqueeView;->Ps:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 170
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 171
    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/common/uilib/MarqueeView;)Lcom/kingroot/common/uilib/MarqueeView$a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/kingroot/common/uilib/MarqueeView;->Pq:Lcom/kingroot/common/uilib/MarqueeView$a;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 48
    iput-object p1, p0, Lcom/kingroot/common/uilib/MarqueeView;->mContext:Landroid/content/Context;

    .line 49
    iget-object v0, p0, Lcom/kingroot/common/uilib/MarqueeView;->Po:Ljava/util/List;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/common/uilib/MarqueeView;->Po:Ljava/util/List;

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/MarqueeView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/afs$a;->MarqueeViewStyle:[I

    invoke-virtual {v0, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    iget v1, p0, Lcom/kingroot/common/uilib/MarqueeView;->hX:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/kingroot/common/uilib/MarqueeView;->hX:I

    .line 55
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/kingroot/common/uilib/MarqueeView;->Pp:Z

    .line 56
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/kingroot/common/uilib/MarqueeView;->Ps:Z

    .line 57
    iget v1, p0, Lcom/kingroot/common/uilib/MarqueeView;->Pr:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/kingroot/common/uilib/MarqueeView;->Pr:I

    .line 58
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    iget v1, p0, Lcom/kingroot/common/uilib/MarqueeView;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/kingroot/common/uilib/MarqueeView;->textSize:I

    .line 60
    iget v1, p0, Lcom/kingroot/common/uilib/MarqueeView;->textSize:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/kingroot/kinguser/bce;->A(F)I

    move-result v1

    iput v1, p0, Lcom/kingroot/common/uilib/MarqueeView;->textSize:I

    .line 62
    :cond_1
    const/4 v1, 0x3

    iget v2, p0, Lcom/kingroot/common/uilib/MarqueeView;->textColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/kingroot/common/uilib/MarqueeView;->textColor:I

    .line 63
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 64
    packed-switch v1, :pswitch_data_0

    .line 72
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    iget v0, p0, Lcom/kingroot/common/uilib/MarqueeView;->hX:I

    invoke-virtual {p0, v0}, Lcom/kingroot/common/uilib/MarqueeView;->setFlipInterval(I)V

    .line 75
    return-void

    .line 66
    :pswitch_0
    const/16 v1, 0x11

    iput v1, p0, Lcom/kingroot/common/uilib/MarqueeView;->gravity:I

    goto :goto_0

    .line 69
    :pswitch_1
    const/16 v1, 0x15

    iput v1, p0, Lcom/kingroot/common/uilib/MarqueeView;->gravity:I

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private nT()V
    .locals 4

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/MarqueeView;->clearAnimation()V

    .line 149
    iget-object v0, p0, Lcom/kingroot/common/uilib/MarqueeView;->mContext:Landroid/content/Context;

    const v1, 0x7f040006

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 150
    iget-boolean v1, p0, Lcom/kingroot/common/uilib/MarqueeView;->Pp:Z

    if-eqz v1, :cond_0

    .line 151
    iget v1, p0, Lcom/kingroot/common/uilib/MarqueeView;->Pr:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 153
    :cond_0
    invoke-virtual {p0, v0}, Lcom/kingroot/common/uilib/MarqueeView;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 155
    iget-object v0, p0, Lcom/kingroot/common/uilib/MarqueeView;->mContext:Landroid/content/Context;

    const v1, 0x7f040007

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 156
    iget-boolean v1, p0, Lcom/kingroot/common/uilib/MarqueeView;->Pp:Z

    if-eqz v1, :cond_1

    .line 157
    iget v1, p0, Lcom/kingroot/common/uilib/MarqueeView;->Pr:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 159
    :cond_1
    invoke-virtual {p0, v0}, Lcom/kingroot/common/uilib/MarqueeView;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 160
    return-void
.end method


# virtual methods
.method public J(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/kingroot/common/uilib/MarqueeView;->setNotices(Ljava/util/List;)V

    .line 92
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/MarqueeView;->start()Z

    .line 93
    return-void
.end method

.method public setNotices(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    iput-object p1, p0, Lcom/kingroot/common/uilib/MarqueeView;->Po:Ljava/util/List;

    .line 178
    return-void
.end method

.method public setOnItemClickListener(Lcom/kingroot/common/uilib/MarqueeView$a;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/kingroot/common/uilib/MarqueeView;->Pq:Lcom/kingroot/common/uilib/MarqueeView$a;

    .line 182
    return-void
.end method

.method public start()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 120
    iget-object v1, p0, Lcom/kingroot/common/uilib/MarqueeView;->Po:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/common/uilib/MarqueeView;->Po:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v0

    .line 121
    :cond_1
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/MarqueeView;->removeAllViews()V

    .line 122
    invoke-direct {p0}, Lcom/kingroot/common/uilib/MarqueeView;->nT()V

    move v1, v0

    .line 124
    :goto_1
    iget-object v0, p0, Lcom/kingroot/common/uilib/MarqueeView;->Po:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/kingroot/common/uilib/MarqueeView;->Po:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/kingroot/common/uilib/MarqueeView;->a(Ljava/lang/CharSequence;I)Landroid/widget/TextView;

    move-result-object v0

    .line 127
    new-instance v3, Lcom/kingroot/common/uilib/MarqueeView$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/kingroot/common/uilib/MarqueeView$1;-><init>(Lcom/kingroot/common/uilib/MarqueeView;ILandroid/widget/TextView;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    invoke-virtual {p0, v0}, Lcom/kingroot/common/uilib/MarqueeView;->addView(Landroid/view/View;)V

    .line 124
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/kingroot/common/uilib/MarqueeView;->Po:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_3

    .line 139
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/MarqueeView;->startFlipping()V

    :goto_2
    move v0, v2

    .line 143
    goto :goto_0

    .line 141
    :cond_3
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/MarqueeView;->stopFlipping()V

    goto :goto_2
.end method
