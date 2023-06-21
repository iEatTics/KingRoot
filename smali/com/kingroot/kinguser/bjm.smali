.class public Lcom/kingroot/kinguser/bjm;
.super Lcom/kingroot/kinguser/bij;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bjm$a;
    }
.end annotation


# instance fields
.field private aci:Landroid/widget/Button;

.field private acj:Landroid/widget/Button;

.field private bxk:Lcom/kingroot/kinguser/bjm$a;

.field private bxl:Lcom/kingroot/kinguser/bjm$a;

.field private mCheckBox:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    const v0, 0x7f0d0069

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/bij;-><init>(Landroid/content/Context;I)V

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bjm;)Lcom/kingroot/kinguser/bjm$a;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/kingroot/kinguser/bjm;->bxk:Lcom/kingroot/kinguser/bjm$a;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bjm;)Lcom/kingroot/kinguser/bjm$a;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/kingroot/kinguser/bjm;->bxl:Lcom/kingroot/kinguser/bjm$a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bjm$a;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/kingroot/kinguser/bjm;->bxl:Lcom/kingroot/kinguser/bjm$a;

    .line 69
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/bjm;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bij;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f030046

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bjm;->setContentView(I)V

    .line 32
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjm;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 33
    const v0, 0x7f0f0096

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bjm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjm;->aci:Landroid/widget/Button;

    .line 34
    const v0, 0x7f0f0097

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bjm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjm;->acj:Landroid/widget/Button;

    .line 35
    iget-object v0, p0, Lcom/kingroot/kinguser/bjm;->acj:Landroid/widget/Button;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070368

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 36
    const v0, 0x7f0f0141

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bjm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjm;->mCheckBox:Landroid/widget/CheckBox;

    .line 37
    iget-object v0, p0, Lcom/kingroot/kinguser/bjm;->aci:Landroid/widget/Button;

    new-instance v1, Lcom/kingroot/kinguser/bjm$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bjm$1;-><init>(Lcom/kingroot/kinguser/bjm;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/kingroot/kinguser/bjm;->acj:Landroid/widget/Button;

    new-instance v1, Lcom/kingroot/kinguser/bjm$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bjm$2;-><init>(Lcom/kingroot/kinguser/bjm;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method
