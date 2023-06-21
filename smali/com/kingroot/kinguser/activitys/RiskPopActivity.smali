.class public Lcom/kingroot/kinguser/activitys/RiskPopActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static g(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 94
    invoke-static {}, Lcom/kingroot/kinguser/akh;->Au()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 98
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kingroot/kinguser/activitys/RiskPopActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 100
    const-string v1, "count"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/16 v1, 0xd

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0, v5}, Lcom/kingroot/kinguser/activitys/RiskPopActivity;->requestWindowFeature(I)Z

    .line 38
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/activitys/RiskPopActivity;->setContentView(I)V

    .line 40
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v2, 0x18879

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 43
    const v0, 0x7f0f0151

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/activitys/RiskPopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 44
    const v2, 0x7f02020e

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 47
    const v0, 0x7f0f00de

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/activitys/RiskPopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 48
    const v2, 0x7f020121

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    const v0, 0x7f0f0096

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/activitys/RiskPopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 52
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0702df

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0e001a

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 54
    new-instance v2, Lcom/kingroot/kinguser/activitys/RiskPopActivity$1;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/activitys/RiskPopActivity$1;-><init>(Lcom/kingroot/kinguser/activitys/RiskPopActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v0, 0x7f0f0097

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/activitys/RiskPopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 64
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0702e1

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0e00b8

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 66
    new-instance v2, Lcom/kingroot/kinguser/activitys/RiskPopActivity$2;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/activitys/RiskPopActivity$2;-><init>(Lcom/kingroot/kinguser/activitys/RiskPopActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v0, 0x7f0f0076

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/activitys/RiskPopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 76
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0702e2

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p0}, Lcom/kingroot/kinguser/activitys/RiskPopActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "count"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 79
    if-lt v0, v1, :cond_0

    move v0, v1

    .line 82
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0702e0

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 83
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 86
    const v0, 0x7f0f0091

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/activitys/RiskPopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 87
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->EW()V

    .line 90
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/kingroot/kinguser/activitys/RiskPopActivity;->finish()V

    .line 32
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 33
    return-void
.end method
