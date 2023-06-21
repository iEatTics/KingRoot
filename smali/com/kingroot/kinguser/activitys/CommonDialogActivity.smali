.class public Lcom/kingroot/kinguser/activitys/CommonDialogActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/activitys/CommonDialogActivity$b;,
        Lcom/kingroot/kinguser/activitys/CommonDialogActivity$a;
    }
.end annotation


# instance fields
.field private aci:Landroid/widget/Button;

.field private acj:Landroid/widget/Button;

.field private afU:Landroid/widget/ImageView;

.field private aif:Landroid/widget/TextView;

.field private aig:Landroid/view/View;

.field private aih:Lcom/kingroot/kinguser/activitys/CommonDialogActivity$b;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/activitys/CommonDialogActivity;)Lcom/kingroot/kinguser/activitys/CommonDialogActivity$b;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->aih:Lcom/kingroot/kinguser/activitys/CommonDialogActivity$b;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/activitys/CommonDialogActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->aci:Landroid/widget/Button;

    return-object v0
.end method

.method private cU(I)Lcom/kingroot/kinguser/activitys/CommonDialogActivity$b;
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/activitys/CommonDialogActivity$1;-><init>(Lcom/kingroot/kinguser/activitys/CommonDialogActivity;I)V

    .line 161
    return-object v0
.end method

.method private o(Ljava/lang/String;I)Lcom/kingroot/kinguser/activitys/CommonDialogActivity$b;
    .locals 1

    .prologue
    .line 169
    new-instance v0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/kingroot/kinguser/activitys/CommonDialogActivity$2;-><init>(Lcom/kingroot/kinguser/activitys/CommonDialogActivity;ILjava/lang/String;)V

    .line 189
    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->aih:Lcom/kingroot/kinguser/activitys/CommonDialogActivity$b;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->aih:Lcom/kingroot/kinguser/activitys/CommonDialogActivity$b;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/activitys/CommonDialogActivity$b;->cV(I)V

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->finish()V

    .line 217
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    .prologue
    const v12, 0x7f0700c8

    const/16 v11, 0x8

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0, v10}, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->requestWindowFeature(I)Z

    .line 65
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->setContentView(I)V

    .line 67
    invoke-virtual {p0}, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 68
    const-string v0, "Title"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    const-string v0, "Content"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 70
    const-string v0, "LeftBtn"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 71
    const-string v0, "RightBtn"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 73
    const-string v0, "Type"

    invoke-virtual {v1, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 75
    const-string v0, "WhereFrom"

    const/4 v7, 0x4

    invoke-virtual {v1, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 77
    const v0, 0x7f0f0076

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->mTitleView:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0f0091

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->aif:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0f0096

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->aci:Landroid/widget/Button;

    .line 80
    const v0, 0x7f0f0097

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->acj:Landroid/widget/Button;

    .line 81
    const v0, 0x7f0f0143

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->aig:Landroid/view/View;

    .line 82
    const v0, 0x7f0f00de

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->afU:Landroid/widget/ImageView;

    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->afU:Landroid/widget/ImageView;

    const v8, 0x7f0201c9

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    const v0, 0x7f0f0152

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 86
    if-eqz v2, :cond_0

    .line 87
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :cond_0
    if-eqz v3, :cond_1

    .line 91
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->aif:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x12

    if-le v0, v2, :cond_4

    .line 93
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->aif:Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 94
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->aif:Landroid/widget/TextView;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 100
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->aci:Landroid/widget/Button;

    new-instance v2, Lcom/kingroot/kinguser/activitys/CommonDialogActivity$a;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/activitys/CommonDialogActivity$a;-><init>(Lcom/kingroot/kinguser/activitys/CommonDialogActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    if-eqz v4, :cond_2

    .line 102
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->aci:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->acj:Landroid/widget/Button;

    new-instance v2, Lcom/kingroot/kinguser/activitys/CommonDialogActivity$a;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/activitys/CommonDialogActivity$a;-><init>(Lcom/kingroot/kinguser/activitys/CommonDialogActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    if-eqz v5, :cond_3

    .line 107
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->acj:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_3
    if-ne v10, v6, :cond_5

    .line 111
    invoke-direct {p0, v7}, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->cU(I)Lcom/kingroot/kinguser/activitys/CommonDialogActivity$b;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->aih:Lcom/kingroot/kinguser/activitys/CommonDialogActivity$b;

    .line 112
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->acj:Landroid/widget/Button;

    const v1, 0x7f0703b7

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 113
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->afU:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->aci:Landroid/widget/Button;

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setText(I)V

    .line 116
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1883f

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 140
    :goto_1
    return-void

    .line 96
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->aif:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 117
    :cond_5
    const/4 v0, 0x2

    if-ne v0, v6, :cond_7

    .line 118
    const-string v0, "UpdatePath"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-direct {p0, v0, v7}, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->o(Ljava/lang/String;I)Lcom/kingroot/kinguser/activitys/CommonDialogActivity$b;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->aih:Lcom/kingroot/kinguser/activitys/CommonDialogActivity$b;

    .line 120
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0703bc

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 122
    if-eqz v3, :cond_6

    .line 123
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 124
    const/4 v2, -0x1

    if-eq v0, v2, :cond_6

    .line 125
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 126
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const/high16 v4, -0x10000

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/2addr v1, v0

    const/16 v4, 0x21

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 127
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->aif:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    :cond_6
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->acj:Landroid/widget/Button;

    const v1, 0x7f0703b5

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 131
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->afU:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->aci:Landroid/widget/Button;

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setText(I)V

    .line 134
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18840

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_1

    .line 136
    :cond_7
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->afU:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->finish()V

    .line 245
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 246
    invoke-static {}, Lcom/kingroot/common/framework/main/MainExitReceiver;->jF()V

    .line 247
    return-void
.end method
