.class public Lcom/kingroot/kinguser/agg;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/agg$a;,
        Lcom/kingroot/kinguser/agg$b;
    }
.end annotation


# instance fields
.field private alr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/auc;",
            ">;"
        }
    .end annotation
.end field

.field private als:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private alt:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ProgressBar;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/auc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/kingroot/kinguser/agg;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/kingroot/kinguser/agg;->alr:Ljava/util/ArrayList;

    .line 37
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/kingroot/kinguser/agg;->alr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 84
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/kingroot/kinguser/agg;->alr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/auc;

    iget v0, v0, Lcom/kingroot/kinguser/auc;->mType:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    const v5, 0x7f0f0250

    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 91
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/agg;->getItemViewType(I)I

    move-result v4

    .line 92
    if-nez p2, :cond_4

    .line 93
    new-instance v3, Lcom/kingroot/kinguser/agg$b;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/agg$b;-><init>(Lcom/kingroot/kinguser/agg;)V

    .line 95
    packed-switch v4, :pswitch_data_0

    move-object v2, p2

    .line 207
    :cond_0
    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, v2

    move-object v2, v3

    .line 213
    :goto_1
    iget-object v1, p0, Lcom/kingroot/kinguser/agg;->alr:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/auc;

    .line 215
    packed-switch v4, :pswitch_data_1

    .line 426
    :goto_2
    :pswitch_0
    return-object p2

    .line 97
    :pswitch_1
    iget-object v1, p0, Lcom/kingroot/kinguser/agg;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300e3

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 98
    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/kingroot/kinguser/agg$b;->alx:Landroid/widget/TextView;

    goto :goto_0

    .line 103
    :pswitch_2
    iget-object v1, p0, Lcom/kingroot/kinguser/agg;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300df

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 110
    :pswitch_3
    iget-object v1, p0, Lcom/kingroot/kinguser/agg;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300ce

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 111
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/kingroot/kinguser/agg$b;->alx:Landroid/widget/TextView;

    .line 112
    const v1, 0x7f0f0254

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/kingroot/kinguser/agg$b;->alz:Landroid/widget/TextView;

    .line 113
    const v1, 0x7f0f020c

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/kingroot/kinguser/agg$b;->NE:Landroid/widget/ImageView;

    .line 114
    const v1, 0x7f0f00e8

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v3, Lcom/kingroot/kinguser/agg$b;->alG:Landroid/view/View;

    .line 115
    if-ne v8, v4, :cond_1

    .line 116
    const v1, 0x7f0f0252

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/kingroot/kinguser/agg$b;->aly:Landroid/widget/TextView;

    .line 117
    iget-object v1, v3, Lcom/kingroot/kinguser/agg$b;->aly:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    :cond_1
    const/16 v1, 0xc

    if-ne v1, v4, :cond_0

    .line 120
    const v1, 0x7f0f0253

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/kingroot/kinguser/agg$b;->alE:Landroid/widget/ImageView;

    .line 121
    iget-object v1, v3, Lcom/kingroot/kinguser/agg$b;->alE:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 127
    :pswitch_4
    iget-object v1, p0, Lcom/kingroot/kinguser/agg;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300cd

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 128
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/kingroot/kinguser/agg$b;->alx:Landroid/widget/TextView;

    .line 129
    const v1, 0x7f0f0251

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/kingroot/kinguser/agg$b;->NE:Landroid/widget/ImageView;

    goto/16 :goto_0

    .line 135
    :pswitch_5
    iget-object v1, p0, Lcom/kingroot/kinguser/agg;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300cc

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 136
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/kingroot/kinguser/agg$b;->alx:Landroid/widget/TextView;

    .line 144
    const v1, 0x7f0f0078

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 146
    :try_start_0
    move-object v0, v2

    check-cast v0, Lcom/kingroot/common/uilib/QSwitchCheckBox;

    move-object v1, v0

    iput-object v1, v3, Lcom/kingroot/kinguser/agg$b;->alD:Lcom/kingroot/common/uilib/QSwitchCheckBox;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p2

    .line 151
    goto/16 :goto_0

    .line 147
    :catch_0
    move-exception v1

    .line 148
    instance-of v1, v2, Lcom/kingroot/common/uilib/QSwitchCheckBox;

    if-eqz v1, :cond_2

    .line 149
    check-cast v2, Lcom/kingroot/common/uilib/QSwitchCheckBox;

    iput-object v2, v3, Lcom/kingroot/kinguser/agg$b;->alD:Lcom/kingroot/common/uilib/QSwitchCheckBox;

    :cond_2
    move-object v2, p2

    .line 153
    goto/16 :goto_0

    .line 156
    :pswitch_6
    iget-object v1, p0, Lcom/kingroot/kinguser/agg;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300d0

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 157
    const v1, 0x7f0f0182

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v3, Lcom/kingroot/kinguser/agg$b;->alF:Landroid/widget/Button;

    .line 158
    const v1, 0x7f0f018c

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, v3, Lcom/kingroot/kinguser/agg$b;->VL:Landroid/widget/ProgressBar;

    .line 160
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v5, v3, Lcom/kingroot/kinguser/agg$b;->alF:Landroid/widget/Button;

    invoke-direct {v1, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/agg;->als:Ljava/lang/ref/WeakReference;

    .line 161
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v5, v3, Lcom/kingroot/kinguser/agg$b;->VL:Landroid/widget/ProgressBar;

    invoke-direct {v1, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/agg;->alt:Ljava/lang/ref/WeakReference;

    goto/16 :goto_0

    .line 166
    :pswitch_7
    iget-object v1, p0, Lcom/kingroot/kinguser/agg;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300dc

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_0

    .line 170
    :pswitch_8
    iget-object v1, p0, Lcom/kingroot/kinguser/agg;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300d4

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 171
    const v1, 0x7f0f00d1

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/kingroot/kinguser/agg$b;->alx:Landroid/widget/TextView;

    .line 172
    const v1, 0x7f0f0233

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/kingroot/kinguser/agg$b;->alH:Landroid/widget/ImageView;

    goto/16 :goto_0

    .line 177
    :pswitch_9
    iget-object v1, p0, Lcom/kingroot/kinguser/agg;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300e0

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 178
    const v1, 0x7f0f0264

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/kingroot/kinguser/agg$b;->alC:Landroid/widget/TextView;

    .line 179
    const v1, 0x7f0f0265

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/kingroot/kinguser/agg$b;->alB:Landroid/widget/TextView;

    .line 180
    const v1, 0x7f0f0263

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/kingroot/kinguser/agg$b;->NE:Landroid/widget/ImageView;

    goto/16 :goto_0

    .line 184
    :pswitch_a
    iget-object v1, p0, Lcom/kingroot/kinguser/agg;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300e4

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 185
    const v1, 0x7f0f026a

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/kingroot/kinguser/agg$b;->alA:Landroid/widget/TextView;

    .line 186
    const v1, 0x7f0f026b

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/kingroot/kinguser/agg$b;->alB:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 190
    :pswitch_b
    iget-object v1, p0, Lcom/kingroot/kinguser/agg;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300cf

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 191
    const v1, 0x7f0f0255

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/kingroot/kinguser/agg$b;->alA:Landroid/widget/TextView;

    .line 192
    const v1, 0x7f0f0256

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/kingroot/kinguser/agg$b;->alB:Landroid/widget/TextView;

    .line 193
    const v1, 0x7f0f0078

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 195
    :try_start_1
    move-object v0, v2

    check-cast v0, Lcom/kingroot/common/uilib/QSwitchCheckBox;

    move-object v1, v0

    iput-object v1, v3, Lcom/kingroot/kinguser/agg$b;->alD:Lcom/kingroot/common/uilib/QSwitchCheckBox;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, p2

    .line 200
    goto/16 :goto_0

    .line 196
    :catch_1
    move-exception v1

    .line 197
    instance-of v1, v2, Lcom/kingroot/common/uilib/QSwitchCheckBox;

    if-eqz v1, :cond_3

    .line 198
    check-cast v2, Lcom/kingroot/common/uilib/QSwitchCheckBox;

    iput-object v2, v3, Lcom/kingroot/kinguser/agg$b;->alD:Lcom/kingroot/common/uilib/QSwitchCheckBox;

    :cond_3
    move-object v2, p2

    .line 201
    goto/16 :goto_0

    .line 209
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/agg$b;

    move-object v2, v1

    goto/16 :goto_1

    .line 217
    :pswitch_c
    iget-object v2, v2, Lcom/kingroot/kinguser/agg$b;->alx:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/kingroot/kinguser/auc;->aQY:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 224
    :pswitch_d
    iget-object v3, v2, Lcom/kingroot/kinguser/agg$b;->alx:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/kingroot/kinguser/auc;->aQY:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget v3, v1, Lcom/kingroot/kinguser/auc;->mIconResId:I

    const v5, -0xf423f

    if-eq v3, v5, :cond_5

    .line 227
    iget-object v3, p0, Lcom/kingroot/kinguser/agg;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v5, v1, Lcom/kingroot/kinguser/auc;->mIconResId:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 228
    iget-object v5, v2, Lcom/kingroot/kinguser/agg$b;->alx:Landroid/widget/TextView;

    invoke-virtual {v5, v3, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 229
    iget-object v3, v2, Lcom/kingroot/kinguser/agg$b;->alx:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/kingroot/kinguser/agg;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00ba

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 232
    :cond_5
    iget-object v3, v2, Lcom/kingroot/kinguser/agg$b;->alz:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/kingroot/kinguser/auc;->aRa:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v3, v2, Lcom/kingroot/kinguser/agg$b;->NE:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    iget v3, v1, Lcom/kingroot/kinguser/auc;->aQX:I

    const/16 v5, 0x13

    if-eq v3, v5, :cond_6

    iget v3, v1, Lcom/kingroot/kinguser/auc;->aQX:I

    const/16 v5, 0x22

    if-ne v3, v5, :cond_9

    .line 236
    :cond_6
    iget-object v3, v2, Lcom/kingroot/kinguser/agg$b;->alG:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 240
    :goto_3
    if-ne v8, v4, :cond_7

    .line 241
    iget-object v3, v2, Lcom/kingroot/kinguser/agg$b;->aly:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/kingroot/kinguser/auc;->aQZ:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    :cond_7
    const/16 v3, 0xc

    if-ne v3, v4, :cond_8

    .line 244
    iget-object v2, v2, Lcom/kingroot/kinguser/agg$b;->alE:Landroid/widget/ImageView;

    iget-object v1, v1, Lcom/kingroot/kinguser/auc;->aRd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    :cond_8
    invoke-virtual {p2, v7}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_2

    .line 238
    :cond_9
    iget-object v3, v2, Lcom/kingroot/kinguser/agg$b;->alG:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 251
    :pswitch_e
    iget-object v3, v2, Lcom/kingroot/kinguser/agg$b;->alx:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/kingroot/kinguser/auc;->aQY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v3, v2, Lcom/kingroot/kinguser/agg$b;->alz:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/kingroot/kinguser/auc;->aRa:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v1, v2, Lcom/kingroot/kinguser/agg$b;->NE:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 254
    iget-object v1, v2, Lcom/kingroot/kinguser/agg$b;->alG:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 255
    invoke-virtual {p2, v9}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_2

    .line 260
    :pswitch_f
    iget-object v2, v2, Lcom/kingroot/kinguser/agg$b;->alx:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/kingroot/kinguser/auc;->aQY:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 265
    :pswitch_10
    iget-object v3, v2, Lcom/kingroot/kinguser/agg$b;->alx:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/kingroot/kinguser/auc;->aQY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget v3, v1, Lcom/kingroot/kinguser/auc;->mIconResId:I

    const v4, -0xf423f

    if-eq v3, v4, :cond_a

    .line 268
    iget-object v3, p0, Lcom/kingroot/kinguser/agg;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v1, Lcom/kingroot/kinguser/auc;->mIconResId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 269
    iget-object v4, v2, Lcom/kingroot/kinguser/agg$b;->alx:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 270
    iget-object v3, v2, Lcom/kingroot/kinguser/agg$b;->alx:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/kingroot/kinguser/agg;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00ba

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 273
    :cond_a
    iget-object v3, v2, Lcom/kingroot/kinguser/agg$b;->alD:Lcom/kingroot/common/uilib/QSwitchCheckBox;

    iget-boolean v4, v1, Lcom/kingroot/kinguser/auc;->aRi:Z

    invoke-virtual {v3, v4}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->setEnabled(Z)V

    .line 274
    iget-object v3, v2, Lcom/kingroot/kinguser/agg$b;->alD:Lcom/kingroot/common/uilib/QSwitchCheckBox;

    iget-boolean v4, v1, Lcom/kingroot/kinguser/auc;->aRi:Z

    invoke-virtual {v3, v4}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->setFocusable(Z)V

    .line 275
    iget-object v3, v2, Lcom/kingroot/kinguser/agg$b;->alD:Lcom/kingroot/common/uilib/QSwitchCheckBox;

    iget-boolean v4, v1, Lcom/kingroot/kinguser/auc;->aRi:Z

    invoke-virtual {v3, v4}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->setClickable(Z)V

    .line 276
    iget-boolean v3, v1, Lcom/kingroot/kinguser/auc;->aRi:Z

    if-eqz v3, :cond_c

    .line 277
    iget-object v3, v2, Lcom/kingroot/kinguser/agg$b;->alD:Lcom/kingroot/common/uilib/QSwitchCheckBox;

    invoke-virtual {v3, v6}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-boolean v3, v1, Lcom/kingroot/kinguser/auc;->aRh:Z

    if-eqz v3, :cond_b

    .line 279
    iget-object v3, v2, Lcom/kingroot/kinguser/agg$b;->alD:Lcom/kingroot/common/uilib/QSwitchCheckBox;

    invoke-virtual {v3, v9}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->setChecked(Z)V

    .line 284
    :goto_4
    iget-object v2, v2, Lcom/kingroot/kinguser/agg$b;->alD:Lcom/kingroot/common/uilib/QSwitchCheckBox;

    new-instance v3, Lcom/kingroot/kinguser/agg$1;

    invoke-direct {v3, p0, v1}, Lcom/kingroot/kinguser/agg$1;-><init>(Lcom/kingroot/kinguser/agg;Lcom/kingroot/kinguser/auc;)V

    invoke-virtual {v2, v3}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_2

    .line 281
    :cond_b
    iget-object v3, v2, Lcom/kingroot/kinguser/agg$b;->alD:Lcom/kingroot/common/uilib/QSwitchCheckBox;

    invoke-virtual {v3, v7}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->setChecked(Z)V

    goto :goto_4

    .line 295
    :cond_c
    iget-object v2, v2, Lcom/kingroot/kinguser/agg$b;->alD:Lcom/kingroot/common/uilib/QSwitchCheckBox;

    invoke-virtual {v2}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    new-instance v3, Lcom/kingroot/kinguser/agg$2;

    invoke-direct {v3, p0, v1}, Lcom/kingroot/kinguser/agg$2;-><init>(Lcom/kingroot/kinguser/agg;Lcom/kingroot/kinguser/auc;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 307
    :pswitch_11
    iget-object v3, v2, Lcom/kingroot/kinguser/agg$b;->alF:Landroid/widget/Button;

    iget-object v4, v1, Lcom/kingroot/kinguser/auc;->aRl:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget v3, v1, Lcom/kingroot/kinguser/auc;->mProgress:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_d

    .line 309
    iget-object v3, v2, Lcom/kingroot/kinguser/agg$b;->alF:Landroid/widget/Button;

    iget-object v1, v1, Lcom/kingroot/kinguser/auc;->aQY:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v1, v2, Lcom/kingroot/kinguser/agg$b;->VL:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_2

    .line 313
    :cond_d
    iget-object v3, v2, Lcom/kingroot/kinguser/agg$b;->alF:Landroid/widget/Button;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/kingroot/kinguser/auc;->aQY:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/kingroot/kinguser/auc;->mProgress:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v3, v2, Lcom/kingroot/kinguser/agg$b;->VL:Landroid/widget/ProgressBar;

    iget v1, v1, Lcom/kingroot/kinguser/auc;->mProgress:I

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 315
    iget-object v1, v2, Lcom/kingroot/kinguser/agg$b;->VL:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_2

    .line 321
    :pswitch_12
    iget-object v3, v2, Lcom/kingroot/kinguser/agg$b;->alx:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/kingroot/kinguser/auc;->aQY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v3, v2, Lcom/kingroot/kinguser/agg$b;->alH:Landroid/widget/ImageView;

    iget-boolean v4, v1, Lcom/kingroot/kinguser/auc;->aRi:Z

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 323
    iget-object v3, v2, Lcom/kingroot/kinguser/agg$b;->alH:Landroid/widget/ImageView;

    iget-boolean v4, v1, Lcom/kingroot/kinguser/auc;->aRi:Z

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 324
    iget-object v3, v2, Lcom/kingroot/kinguser/agg$b;->alH:Landroid/widget/ImageView;

    iget-boolean v4, v1, Lcom/kingroot/kinguser/auc;->aRi:Z

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 326
    iget-boolean v3, v1, Lcom/kingroot/kinguser/auc;->mSelected:Z

    if-eqz v3, :cond_e

    .line 327
    iget-object v3, v2, Lcom/kingroot/kinguser/agg$b;->alH:Landroid/widget/ImageView;

    const v4, 0x7f02020a

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 331
    :goto_5
    iget-object v3, v2, Lcom/kingroot/kinguser/agg$b;->alH:Landroid/widget/ImageView;

    .line 332
    iget v4, v1, Lcom/kingroot/kinguser/auc;->mPos:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 333
    iget-object v2, v2, Lcom/kingroot/kinguser/agg$b;->alH:Landroid/widget/ImageView;

    new-instance v4, Lcom/kingroot/kinguser/agg$3;

    invoke-direct {v4, p0, v1, v3}, Lcom/kingroot/kinguser/agg$3;-><init>(Lcom/kingroot/kinguser/agg;Lcom/kingroot/kinguser/auc;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    new-instance v2, Lcom/kingroot/kinguser/agg$4;

    invoke-direct {v2, p0, v1, v3}, Lcom/kingroot/kinguser/agg$4;-><init>(Lcom/kingroot/kinguser/agg;Lcom/kingroot/kinguser/auc;Landroid/widget/ImageView;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 329
    :cond_e
    iget-object v3, v2, Lcom/kingroot/kinguser/agg$b;->alH:Landroid/widget/ImageView;

    const v4, 0x7f02020b

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 353
    :pswitch_13
    iget-object v3, v2, Lcom/kingroot/kinguser/agg$b;->alC:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/kingroot/kinguser/auc;->CJ:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v3, v2, Lcom/kingroot/kinguser/agg$b;->alB:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/kingroot/kinguser/auc;->aRc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v2, v2, Lcom/kingroot/kinguser/agg$b;->NE:Landroid/widget/ImageView;

    iget v1, v1, Lcom/kingroot/kinguser/auc;->mIconResId:I

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 360
    :pswitch_14
    iget-object v3, v2, Lcom/kingroot/kinguser/agg$b;->alA:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/kingroot/kinguser/auc;->aRb:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v2, v2, Lcom/kingroot/kinguser/agg$b;->alB:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/kingroot/kinguser/auc;->aRc:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 366
    :pswitch_15
    iget-object v3, v2, Lcom/kingroot/kinguser/agg$b;->alA:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/kingroot/kinguser/auc;->aRb:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v3, v2, Lcom/kingroot/kinguser/agg$b;->alB:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/kingroot/kinguser/auc;->aRc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v3, v2, Lcom/kingroot/kinguser/agg$b;->alD:Lcom/kingroot/common/uilib/QSwitchCheckBox;

    iget-boolean v4, v1, Lcom/kingroot/kinguser/auc;->aRi:Z

    invoke-virtual {v3, v4}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->setEnabled(Z)V

    .line 370
    iget-object v3, v2, Lcom/kingroot/kinguser/agg$b;->alD:Lcom/kingroot/common/uilib/QSwitchCheckBox;

    iget-boolean v4, v1, Lcom/kingroot/kinguser/auc;->aRi:Z

    invoke-virtual {v3, v4}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->setFocusable(Z)V

    .line 371
    iget-object v3, v2, Lcom/kingroot/kinguser/agg$b;->alD:Lcom/kingroot/common/uilib/QSwitchCheckBox;

    iget-boolean v4, v1, Lcom/kingroot/kinguser/auc;->aRi:Z

    invoke-virtual {v3, v4}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->setClickable(Z)V

    .line 372
    iget-boolean v3, v1, Lcom/kingroot/kinguser/auc;->aRi:Z

    if-eqz v3, :cond_10

    .line 373
    iget-object v3, v2, Lcom/kingroot/kinguser/agg$b;->alD:Lcom/kingroot/common/uilib/QSwitchCheckBox;

    invoke-virtual {v3, v6}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    iget-boolean v3, v1, Lcom/kingroot/kinguser/auc;->aRh:Z

    if-eqz v3, :cond_f

    .line 375
    iget-object v3, v2, Lcom/kingroot/kinguser/agg$b;->alD:Lcom/kingroot/common/uilib/QSwitchCheckBox;

    invoke-virtual {v3, v9}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->setChecked(Z)V

    .line 380
    :goto_6
    iget-object v2, v2, Lcom/kingroot/kinguser/agg$b;->alD:Lcom/kingroot/common/uilib/QSwitchCheckBox;

    new-instance v3, Lcom/kingroot/kinguser/agg$5;

    invoke-direct {v3, p0, v1}, Lcom/kingroot/kinguser/agg$5;-><init>(Lcom/kingroot/kinguser/agg;Lcom/kingroot/kinguser/auc;)V

    invoke-virtual {v2, v3}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_2

    .line 377
    :cond_f
    iget-object v3, v2, Lcom/kingroot/kinguser/agg$b;->alD:Lcom/kingroot/common/uilib/QSwitchCheckBox;

    invoke-virtual {v3, v7}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->setChecked(Z)V

    goto :goto_6

    .line 391
    :cond_10
    iget-object v2, v2, Lcom/kingroot/kinguser/agg$b;->alD:Lcom/kingroot/common/uilib/QSwitchCheckBox;

    invoke-virtual {v2}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    new-instance v3, Lcom/kingroot/kinguser/agg$6;

    invoke-direct {v3, p0, v1}, Lcom/kingroot/kinguser/agg$6;-><init>(Lcom/kingroot/kinguser/agg;Lcom/kingroot/kinguser/auc;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_3
        :pswitch_b
    .end packed-switch

    .line 215
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_f
        :pswitch_d
        :pswitch_10
        :pswitch_e
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_d
        :pswitch_15
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 436
    const/16 v0, 0xe

    return v0
.end method
