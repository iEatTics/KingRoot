.class public Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private ajg:I

.field private ajh:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity;->ajh:I

    return v0
.end method

.method public static a(Landroid/content/Context;II)V
    .locals 2

    .prologue
    .line 109
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 111
    const-string v1, "extra_app_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    const-string v1, "extra_show_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/high16 v2, 0x40000

    const/16 v1, 0x20

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0, v3}, Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity;->requestWindowFeature(I)Z

    .line 43
    invoke-virtual {p0}, Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 44
    invoke-virtual {p0}, Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 45
    const v0, 0x7f030072

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity;->setContentView(I)V

    .line 47
    invoke-virtual {p0}, Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    const-string v1, "extra_app_number"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity;->ajg:I

    .line 51
    const-string v1, "extra_show_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity;->ajh:I

    .line 54
    :cond_0
    const v0, 0x7f0f00de

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0202c5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    const v0, 0x7f0f0096

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 59
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07043f

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 60
    new-instance v1, Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity$1;-><init>(Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v0, 0x7f0f0097

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 71
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070440

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 72
    new-instance v1, Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity$2;-><init>(Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v0, 0x7f0f0076

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 83
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070441

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const v0, 0x7f0f0153

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 88
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07043e

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity;->ajg:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    const v0, 0x7f0f0189

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity$3;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity$3;-><init>(Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v0, 0x7f0f0188

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/activitys/WellChosenOuterNewPhoneGuideDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 100
    instance-of v0, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 101
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 102
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 104
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 36
    invoke-static {}, Lcom/kingroot/common/framework/main/MainExitReceiver;->jF()V

    .line 37
    return-void
.end method
