.class public abstract Lcom/kingroot/kinguser/bcg;
.super Lcom/kingroot/kinguser/py;
.source "SourceFile"


# instance fields
.field private CX:Landroid/widget/ImageView;

.field private CY:Landroid/widget/ImageView;

.field private CZ:Landroid/widget/ImageView;

.field private baP:Landroid/view/View;

.field private bgi:Landroid/widget/TextView;

.field private bgj:Landroid/widget/TextView;

.field protected bgk:Landroid/widget/Button;

.field protected bgl:Landroid/widget/Button;

.field protected bgm:Landroid/widget/TextView;

.field protected bgn:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/py;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method private ad(II)Landroid/text/SpannableStringBuilder;
    .locals 3

    .prologue
    .line 74
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 77
    const v1, 0x7f0701b1

    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/bcg;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/bcg;->kw(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 81
    const v1, 0x7f0701e2

    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/bcg;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/bcg;->kw(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 84
    return-object v0
.end method

.method private hY(I)Landroid/text/SpannableStringBuilder;
    .locals 3

    .prologue
    .line 88
    const/16 v2, 0x270f

    .line 90
    if-le p1, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 91
    :goto_0
    if-le p1, v2, :cond_1

    const-string v0, "+"

    .line 94
    :goto_1
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 95
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bcg;->kw(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    .line 97
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 99
    return-object v2

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 91
    :cond_1
    const v0, 0x7f0701c7

    .line 92
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bcg;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private kw(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 5

    .prologue
    .line 103
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 104
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    const v2, 0x3ef0a3d7    # 0.47f

    invoke-direct {v1, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 106
    return-object v0
.end method


# virtual methods
.method protected gy()Landroid/view/View;
    .locals 2

    .prologue
    .line 36
    const v0, 0x7f03008b

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bcg;->aA(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bcg;->baP:Landroid/view/View;

    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/bcg;->baP:Landroid/view/View;

    const v1, 0x7f0f01dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bcg;->bgi:Landroid/widget/TextView;

    .line 39
    iget-object v0, p0, Lcom/kingroot/kinguser/bcg;->baP:Landroid/view/View;

    const v1, 0x7f0f01df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bcg;->bgj:Landroid/widget/TextView;

    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/bcg;->baP:Landroid/view/View;

    const v1, 0x7f0f0177

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/bcg;->bgk:Landroid/widget/Button;

    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/bcg;->baP:Landroid/view/View;

    const v1, 0x7f0f020f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/bcg;->bgl:Landroid/widget/Button;

    .line 42
    iget-object v0, p0, Lcom/kingroot/kinguser/bcg;->baP:Landroid/view/View;

    const v1, 0x7f0f0178

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bcg;->bgm:Landroid/widget/TextView;

    .line 43
    iget-object v0, p0, Lcom/kingroot/kinguser/bcg;->baP:Landroid/view/View;

    const v1, 0x7f0f00b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bcg;->CX:Landroid/widget/ImageView;

    .line 44
    iget-object v0, p0, Lcom/kingroot/kinguser/bcg;->baP:Landroid/view/View;

    const v1, 0x7f0f00b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bcg;->CY:Landroid/widget/ImageView;

    .line 45
    iget-object v0, p0, Lcom/kingroot/kinguser/bcg;->baP:Landroid/view/View;

    const v1, 0x7f0f00b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bcg;->CZ:Landroid/widget/ImageView;

    .line 47
    iget-object v0, p0, Lcom/kingroot/kinguser/bcg;->baP:Landroid/view/View;

    return-object v0
.end method

.method public hZ(I)V
    .locals 4

    .prologue
    .line 110
    const v2, 0x7f020222

    .line 111
    const v1, 0x7f020221

    .line 112
    const v0, 0x7f020220

    .line 117
    packed-switch p1, :pswitch_data_0

    move v0, v1

    move v1, v2

    .line 146
    :goto_0
    :pswitch_0
    iget-object v3, p0, Lcom/kingroot/kinguser/bcg;->CX:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    iget-object v2, p0, Lcom/kingroot/kinguser/bcg;->CY:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    iget-object v1, p0, Lcom/kingroot/kinguser/bcg;->CZ:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 149
    return-void

    :pswitch_1
    move v2, v1

    move v1, v0

    .line 121
    goto :goto_0

    :pswitch_2
    move v1, v0

    .line 126
    goto :goto_0

    :pswitch_3
    move v1, v2

    .line 137
    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public i(III)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 52
    div-int/lit8 v0, p1, 0x3c

    rem-int/lit8 v1, p1, 0x3c

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/bcg;->ad(II)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 54
    if-lez p3, :cond_0

    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/bcg;->bgi:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/kingroot/kinguser/bcg;->bgj:Landroid/widget/TextView;

    invoke-direct {p0, p3}, Lcom/kingroot/kinguser/bcg;->hY(I)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {p0, p2}, Lcom/kingroot/kinguser/bcg;->hZ(I)V

    .line 70
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bcg;->baP:Landroid/view/View;

    const v2, 0x7f0f01c4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/bcg;->baP:Landroid/view/View;

    const v2, 0x7f0f01ce

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/kingroot/kinguser/bcg;->baP:Landroid/view/View;

    const v2, 0x7f0f01c9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/kingroot/kinguser/bcg;->baP:Landroid/view/View;

    const v2, 0x7f0f01e0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/bcg;->baP:Landroid/view/View;

    const v2, 0x7f0f01e1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
