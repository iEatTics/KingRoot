.class Lcom/kingroot/kinguser/asr$b;
.super Lcom/kingroot/kinguser/asr$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/asr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field public aNw:Landroid/widget/Button;

.field public age:Landroid/widget/TextView;

.field public ahP:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/kingroot/kinguser/asr$c;-><init>()V

    .line 279
    const v0, 0x7f0f00f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/asr$b;->aNw:Landroid/widget/Button;

    .line 280
    const v0, 0x7f0f0148

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/asr$b;->ahP:Landroid/widget/ImageView;

    .line 281
    const v0, 0x7f0f00d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/asr$b;->age:Landroid/widget/TextView;

    .line 282
    iget-object v0, p0, Lcom/kingroot/kinguser/asr$b;->aNw:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    return-void
.end method


# virtual methods
.method a(Lcom/kingroot/kinguser/asr;Lcom/kingroot/kinguser/acr;)V
    .locals 3

    .prologue
    .line 286
    iget-object v0, p0, Lcom/kingroot/kinguser/asr$b;->age:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/kingroot/kinguser/asr;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, p1, Lcom/kingroot/kinguser/asr;->aNr:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 289
    iget-object v0, p1, Lcom/kingroot/kinguser/asr;->aNr:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingroot/kinguser/asr$b;->ahP:Landroid/widget/ImageView;

    const v2, 0x7f020110

    invoke-virtual {p2, v0, v1, v2}, Lcom/kingroot/kinguser/acr;->a(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 292
    :cond_0
    iget-boolean v0, p1, Lcom/kingroot/kinguser/asr;->aNt:Z

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/kingroot/kinguser/asr$b;->aNw:Landroid/widget/Button;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070142

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v0, p0, Lcom/kingroot/kinguser/asr$b;->aNw:Landroid/widget/Button;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e005f

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 297
    iget-object v0, p0, Lcom/kingroot/kinguser/asr$b;->aNw:Landroid/widget/Button;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e010a

    .line 298
    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    .line 297
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 299
    iget-object v0, p0, Lcom/kingroot/kinguser/asr$b;->aNw:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 309
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/asr$b;->aNw:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 310
    return-void

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/asr$b;->aNw:Landroid/widget/Button;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070141

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v0, p0, Lcom/kingroot/kinguser/asr$b;->aNw:Landroid/widget/Button;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e0072

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 305
    iget-object v0, p0, Lcom/kingroot/kinguser/asr$b;->aNw:Landroid/widget/Button;

    const v1, 0x7f020146

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 306
    iget-object v0, p0, Lcom/kingroot/kinguser/asr$b;->aNw:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_0
.end method
