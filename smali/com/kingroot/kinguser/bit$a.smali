.class Lcom/kingroot/kinguser/bit$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final ajH:Landroid/widget/ImageView;

.field private final ajP:Landroid/widget/TextView;

.field private final amm:Lcom/kingcore/uilib/ProgressWhell;

.field final synthetic buC:Lcom/kingroot/kinguser/bit;

.field private final buD:I

.field private final buE:I

.field private final buF:Landroid/widget/TextView;

.field private final buG:Landroid/widget/TextView;

.field private final buH:Landroid/widget/TextView;

.field private final buI:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/bit;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 141
    iput-object p1, p0, Lcom/kingroot/kinguser/bit$a;->buC:Lcom/kingroot/kinguser/bit;

    .line 142
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 131
    const-string v0, "#f53a5d"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bit$a;->buD:I

    .line 132
    const-string v0, "#009688"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bit$a;->buE:I

    move-object v0, p2

    .line 143
    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0f0109

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/ws;->a(Landroid/view/View;I)V

    .line 144
    const v0, 0x7f0f011b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bit$a;->ajH:Landroid/widget/ImageView;

    .line 145
    const v0, 0x7f0f011c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bit$a;->ajP:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f0f011d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bit$a;->buF:Landroid/widget/TextView;

    .line 148
    const v0, 0x7f0f011e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bit$a;->buI:Landroid/view/View;

    .line 149
    const v0, 0x7f0f011f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bit$a;->buG:Landroid/widget/TextView;

    .line 150
    const v0, 0x7f0f0120

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bit$a;->buH:Landroid/widget/TextView;

    .line 152
    iget-object v0, p0, Lcom/kingroot/kinguser/bit$a;->buI:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    const v0, 0x7f0f0112

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/ProgressWhell;

    iput-object v0, p0, Lcom/kingroot/kinguser/bit$a;->amm:Lcom/kingcore/uilib/ProgressWhell;

    .line 155
    iget-object v0, p0, Lcom/kingroot/kinguser/bit$a;->amm:Lcom/kingcore/uilib/ProgressWhell;

    iget v1, p0, Lcom/kingroot/kinguser/bit$a;->buE:I

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ProgressWhell;->setBarColor(I)V

    .line 156
    iget-object v0, p0, Lcom/kingroot/kinguser/bit$a;->amm:Lcom/kingcore/uilib/ProgressWhell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ProgressWhell;->setProgress(F)V

    .line 157
    iget-object v0, p0, Lcom/kingroot/kinguser/bit$a;->amm:Lcom/kingcore/uilib/ProgressWhell;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ProgressWhell;->setBarWidth(I)V

    .line 158
    iget-object v0, p0, Lcom/kingroot/kinguser/bit$a;->amm:Lcom/kingcore/uilib/ProgressWhell;

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ProgressWhell;->setCircleRadius(I)V

    .line 159
    iget-object v0, p0, Lcom/kingroot/kinguser/bit$a;->amm:Lcom/kingcore/uilib/ProgressWhell;

    new-instance v1, Lcom/kingroot/kinguser/bit$a$1;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/bit$a$1;-><init>(Lcom/kingroot/kinguser/bit$a;Lcom/kingroot/kinguser/bit;)V

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ProgressWhell;->setCallback(Lcom/kingcore/uilib/ProgressWhell$a;)V

    .line 169
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bit$a;)Lcom/kingcore/uilib/ProgressWhell;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/kingroot/kinguser/bit$a;->amm:Lcom/kingcore/uilib/ProgressWhell;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;)V
    .locals 9

    .prologue
    const v0, 0x7f02010c

    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 172
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->FM()Z

    move-result v1

    .line 174
    iget-object v2, p0, Lcom/kingroot/kinguser/bit$a;->ajP:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v2, p0, Lcom/kingroot/kinguser/bit$a;->buF:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->desc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v2, p0, Lcom/kingroot/kinguser/bit$a;->buG:Landroid/widget/TextView;

    .line 177
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f07044a

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->bur:Ljava/lang/String;

    aput-object v5, v4, v6

    .line 176
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    iget v3, p1, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->level:I

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 180
    iget-object v3, p0, Lcom/kingroot/kinguser/bit$a;->buH:Landroid/widget/TextView;

    .line 181
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v4

    const v5, 0x7f070449

    invoke-virtual {v4, v5}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v6

    .line 180
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    :cond_0
    iget v2, p1, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->state:I

    packed-switch v2, :pswitch_data_0

    .line 208
    :goto_0
    return-void

    .line 186
    :pswitch_0
    iget-object v2, p0, Lcom/kingroot/kinguser/bit$a;->ajH:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 187
    iget-object v2, p0, Lcom/kingroot/kinguser/bit$a;->amm:Lcom/kingcore/uilib/ProgressWhell;

    invoke-virtual {v2, v7}, Lcom/kingcore/uilib/ProgressWhell;->setVisibility(I)V

    .line 188
    iget-object v2, p0, Lcom/kingroot/kinguser/bit$a;->ajH:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    iget-object v2, p0, Lcom/kingroot/kinguser/bit$a;->ajP:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget v0, p0, Lcom/kingroot/kinguser/bit$a;->buE:I

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 188
    :cond_1
    const v0, 0x7f02010b

    goto :goto_1

    .line 190
    :cond_2
    iget v0, p0, Lcom/kingroot/kinguser/bit$a;->buD:I

    goto :goto_2

    .line 193
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bit$a;->ajH:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/kingroot/kinguser/bit$a;->amm:Lcom/kingcore/uilib/ProgressWhell;

    invoke-virtual {v0, v6}, Lcom/kingcore/uilib/ProgressWhell;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/kingroot/kinguser/bit$a;->ajP:Landroid/widget/TextView;

    iget v1, p0, Lcom/kingroot/kinguser/bit$a;->buE:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 196
    iget-object v0, p0, Lcom/kingroot/kinguser/bit$a;->ajP:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f07044c

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 200
    :pswitch_2
    iget-object v1, p0, Lcom/kingroot/kinguser/bit$a;->ajH:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    iget-object v1, p0, Lcom/kingroot/kinguser/bit$a;->amm:Lcom/kingcore/uilib/ProgressWhell;

    invoke-virtual {v1, v7}, Lcom/kingcore/uilib/ProgressWhell;->setVisibility(I)V

    .line 202
    iget-object v1, p0, Lcom/kingroot/kinguser/bit$a;->ajH:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 203
    iget-object v0, p0, Lcom/kingroot/kinguser/bit$a;->ajP:Landroid/widget/TextView;

    iget v1, p0, Lcom/kingroot/kinguser/bit$a;->buE:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    iget-object v0, p0, Lcom/kingroot/kinguser/bit$a;->ajP:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bit$a;->getAdapterPosition()I

    move-result v0

    .line 214
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/bit$a;->buC:Lcom/kingroot/kinguser/bit;

    invoke-static {v1}, Lcom/kingroot/kinguser/bit;->a(Lcom/kingroot/kinguser/bit;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/bit$a;->buC:Lcom/kingroot/kinguser/bit;

    invoke-static {v1}, Lcom/kingroot/kinguser/bit;->a(Lcom/kingroot/kinguser/bit;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;

    .line 220
    invoke-static {v0}, Lcom/kingroot/kinguser/xmod/ui/CveDetailActivity;->b(Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;)V

    goto :goto_0
.end method
