.class public Lcom/kingroot/kinguser/bhu;
.super Lcom/kingroot/kinguser/bij;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bhu$a;
    }
.end annotation


# instance fields
.field private Vd:Landroid/widget/ListView;

.field private act:I

.field private alr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private brm:Lcom/kingroot/kinguser/adg;

.field private brn:Landroid/widget/Button;

.field private bro:Ljava/lang/String;

.field private brp:Lcom/kingroot/kinguser/bhu$a;


# direct methods
.method static synthetic a(Lcom/kingroot/kinguser/bhu;)Lcom/kingroot/kinguser/bhu$a;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/kingroot/kinguser/bhu;->brp:Lcom/kingroot/kinguser/bhu$a;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 61
    :try_start_0
    invoke-super {p0}, Lcom/kingroot/kinguser/bij;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bij;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v0, 0x7f030070

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bhu;->setContentView(I)V

    .line 71
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bhu;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 73
    new-instance v0, Lcom/kingroot/kinguser/adg;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bhu;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/bhu;->alr:Ljava/util/ArrayList;

    iget v3, p0, Lcom/kingroot/kinguser/bhu;->act:I

    invoke-direct {v0, v1, v2, v3}, Lcom/kingroot/kinguser/adg;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bhu;->brm:Lcom/kingroot/kinguser/adg;

    .line 74
    iget-object v0, p0, Lcom/kingroot/kinguser/bhu;->brm:Lcom/kingroot/kinguser/adg;

    new-instance v1, Lcom/kingroot/kinguser/bhu$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bhu$1;-><init>(Lcom/kingroot/kinguser/bhu;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/adg;->a(Lcom/kingroot/kinguser/adg$a;)V

    .line 84
    const v0, 0x7f0f0181

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bhu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bhu;->Vd:Landroid/widget/ListView;

    .line 85
    iget-object v0, p0, Lcom/kingroot/kinguser/bhu;->Vd:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/kingroot/kinguser/bhu;->brm:Lcom/kingroot/kinguser/adg;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    const v0, 0x7f0f0182

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bhu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/bhu;->brn:Landroid/widget/Button;

    .line 88
    iget-object v0, p0, Lcom/kingroot/kinguser/bhu;->brn:Landroid/widget/Button;

    new-instance v1, Lcom/kingroot/kinguser/bhu$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bhu$2;-><init>(Lcom/kingroot/kinguser/bhu;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v0, 0x7f0f00d1

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bhu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 95
    iget-object v1, p0, Lcom/kingroot/kinguser/bhu;->bro:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 52
    :try_start_0
    invoke-super {p0}, Lcom/kingroot/kinguser/bij;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    goto :goto_0
.end method
