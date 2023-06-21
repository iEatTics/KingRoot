.class public Lcom/kingroot/kinguser/bfx$b;
.super Lcom/kingroot/kinguser/bfx$a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bfx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private alK:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingroot/kinguser/bfx$d;",
            ">;"
        }
    .end annotation
.end field

.field public awm:Landroid/widget/TextView;

.field public bnL:Landroid/widget/TextView;

.field public bnM:Landroid/widget/TextView;

.field public bnN:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/kingroot/kinguser/bfx$d;)V
    .locals 1

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bfx$a;-><init>(Landroid/view/View;)V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bfx$b;->alK:Ljava/lang/ref/WeakReference;

    .line 172
    const v0, 0x7f0f00d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bfx$b;->bnL:Landroid/widget/TextView;

    .line 173
    const v0, 0x7f0f0220

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bfx$b;->bnM:Landroid/widget/TextView;

    .line 174
    const v0, 0x7f0f025e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bfx$b;->awm:Landroid/widget/TextView;

    .line 175
    const v0, 0x7f0f019b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bfx$b;->bnN:Landroid/widget/TextView;

    .line 176
    if-eqz p2, :cond_0

    .line 177
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bfx$b;->alK:Ljava/lang/ref/WeakReference;

    .line 179
    :cond_0
    return-void
.end method


# virtual methods
.method public j(Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V
    .locals 7

    .prologue
    .line 182
    iget-object v0, p0, Lcom/kingroot/kinguser/bfx$b;->bnL:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget v0, p1, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnu:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    iget v1, p1, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnu:I

    const/16 v2, 0x3e7

    if-lt v1, v2, :cond_0

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bfx$b;->bnM:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0704ea

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->aaP()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/kingroot/kinguser/bfx$b;->bnN:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/kingroot/kinguser/bfx$b;->awm:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/kingroot/kinguser/bfx$b;->alK:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bfx$b;->alK:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bfx$b;->getAdapterPosition()I

    move-result v1

    .line 200
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 204
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 206
    :sswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bfx$b;->alK:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bfx$d;

    invoke-interface {v0, p1, v1}, Lcom/kingroot/kinguser/bfx$d;->e(Landroid/view/View;I)V

    goto :goto_0

    .line 209
    :sswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bfx$b;->alK:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bfx$d;

    invoke-interface {v0, p1, v1}, Lcom/kingroot/kinguser/bfx$d;->p(Landroid/view/View;I)V

    goto :goto_0

    .line 204
    :sswitch_data_0
    .sparse-switch
        0x7f0f019b -> :sswitch_0
        0x7f0f025e -> :sswitch_1
    .end sparse-switch
.end method
