.class public Lcom/kingroot/kinguser/atq;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/atq$a;
    }
.end annotation


# instance fields
.field private aOt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ats;",
            ">;"
        }
    .end annotation
.end field

.field public aPT:Z

.field private aPU:Landroid/view/View$OnLongClickListener;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ats;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/atq;->aPT:Z

    .line 138
    new-instance v0, Lcom/kingroot/kinguser/atq$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/atq$1;-><init>(Lcom/kingroot/kinguser/atq;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/atq;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 149
    new-instance v0, Lcom/kingroot/kinguser/atq$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/atq$2;-><init>(Lcom/kingroot/kinguser/atq;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/atq;->aPU:Landroid/view/View$OnLongClickListener;

    .line 35
    iput-object p1, p0, Lcom/kingroot/kinguser/atq;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/kingroot/kinguser/atq;->aOt:Ljava/util/List;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/atq;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/kingroot/kinguser/atq;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public Mq()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/kingroot/kinguser/atq;->aOt:Ljava/util/List;

    return-object v0
.end method

.method public aZ(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ats;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    iput-object p1, p0, Lcom/kingroot/kinguser/atq;->aOt:Ljava/util/List;

    .line 125
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/atq;->aOt:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/atq;->aOt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/kingroot/kinguser/atq;->aOt:Ljava/util/List;

    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 49
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/atq;->aOt:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 54
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/16 v4, 0x8

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/atq;->aOt:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ats;

    .line 61
    iput p1, v0, Lcom/kingroot/kinguser/ats;->mPos:I

    .line 63
    if-nez p2, :cond_2

    .line 64
    iget-object v1, p0, Lcom/kingroot/kinguser/atq;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03007e

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 65
    new-instance v2, Lcom/kingroot/kinguser/atq$a;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/atq$a;-><init>(Lcom/kingroot/kinguser/atq;)V

    .line 66
    const v1, 0x7f0f01a6

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/kingroot/kinguser/atq$a;->afU:Landroid/widget/ImageView;

    .line 67
    const v1, 0x7f0f01a9

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/kingroot/kinguser/atq$a;->age:Landroid/widget/TextView;

    .line 68
    const v1, 0x7f0f01a7

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v2, Lcom/kingroot/kinguser/atq$a;->aPW:Landroid/view/View;

    .line 69
    const v1, 0x7f0f01a8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/kingroot/kinguser/atq$a;->aPX:Landroid/widget/ImageView;

    .line 71
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 76
    :goto_0
    iget-object v2, v0, Lcom/kingroot/kinguser/ats;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 77
    iget-object v2, v1, Lcom/kingroot/kinguser/atq$a;->afU:Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/kingroot/kinguser/ats;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    :cond_0
    iget-object v2, v1, Lcom/kingroot/kinguser/atq$a;->age:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/kingroot/kinguser/ats;->mAppName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v5, v1, Lcom/kingroot/kinguser/atq$a;->aPW:Landroid/view/View;

    iget-boolean v2, p0, Lcom/kingroot/kinguser/atq;->aPT:Z

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-boolean v2, p0, Lcom/kingroot/kinguser/atq;->aPT:Z

    if-eqz v2, :cond_4

    iget-boolean v2, v0, Lcom/kingroot/kinguser/ats;->aQc:Z

    if-eqz v2, :cond_4

    .line 86
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 99
    :goto_2
    iget-object v2, v0, Lcom/kingroot/kinguser/ats;->aQd:Lcom/android/animation/AnimatorSet;

    if-eqz v2, :cond_1

    .line 100
    iget-object v2, v0, Lcom/kingroot/kinguser/ats;->aQd:Lcom/android/animation/AnimatorSet;

    invoke-virtual {v2}, Lcom/android/animation/AnimatorSet;->end()V

    .line 104
    :cond_1
    iget-boolean v2, p0, Lcom/kingroot/kinguser/atq;->aPT:Z

    if-eqz v2, :cond_5

    iget-boolean v2, v0, Lcom/kingroot/kinguser/ats;->aQc:Z

    if-nez v2, :cond_5

    .line 105
    iget-object v2, v1, Lcom/kingroot/kinguser/atq$a;->afU:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v2, v1, Lcom/kingroot/kinguser/atq$a;->aPX:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/kingroot/kinguser/atq;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v1, v1, Lcom/kingroot/kinguser/atq$a;->aPX:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 109
    const/4 v1, 0x2

    invoke-static {p2, v1, v6}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 110
    invoke-virtual {v0, p2}, Lcom/kingroot/kinguser/ats;->w(Landroid/view/View;)V

    .line 119
    :goto_3
    return-object p2

    .line 73
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/atq$a;

    goto :goto_0

    :cond_3
    move v2, v4

    .line 82
    goto :goto_1

    .line 88
    :cond_4
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 113
    :cond_5
    invoke-static {p2, v3, v6}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 114
    iget-object v2, v1, Lcom/kingroot/kinguser/atq$a;->afU:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/kingroot/kinguser/atq;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v2, v1, Lcom/kingroot/kinguser/atq$a;->afU:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/kingroot/kinguser/atq;->aPU:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 116
    iget-object v1, v1, Lcom/kingroot/kinguser/atq$a;->afU:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/kingroot/kinguser/atq;->mHandler:Landroid/os/Handler;

    .line 133
    return-void
.end method
