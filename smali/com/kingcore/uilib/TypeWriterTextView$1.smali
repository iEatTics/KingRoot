.class Lcom/kingcore/uilib/TypeWriterTextView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingcore/uilib/TypeWriterTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Dz:Lcom/kingcore/uilib/TypeWriterTextView;


# direct methods
.method constructor <init>(Lcom/kingcore/uilib/TypeWriterTextView;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/kingcore/uilib/TypeWriterTextView$1;->Dz:Lcom/kingcore/uilib/TypeWriterTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kingcore/uilib/TypeWriterTextView$1;->Dz:Lcom/kingcore/uilib/TypeWriterTextView;

    iget-object v1, p0, Lcom/kingcore/uilib/TypeWriterTextView$1;->Dz:Lcom/kingcore/uilib/TypeWriterTextView;

    invoke-static {v1}, Lcom/kingcore/uilib/TypeWriterTextView;->b(Lcom/kingcore/uilib/TypeWriterTextView;)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/kingcore/uilib/TypeWriterTextView$1;->Dz:Lcom/kingcore/uilib/TypeWriterTextView;

    invoke-static {v3}, Lcom/kingcore/uilib/TypeWriterTextView;->a(Lcom/kingcore/uilib/TypeWriterTextView;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/TypeWriterTextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v0, p0, Lcom/kingcore/uilib/TypeWriterTextView$1;->Dz:Lcom/kingcore/uilib/TypeWriterTextView;

    invoke-static {v0}, Lcom/kingcore/uilib/TypeWriterTextView;->c(Lcom/kingcore/uilib/TypeWriterTextView;)I

    move-result v0

    iget-object v1, p0, Lcom/kingcore/uilib/TypeWriterTextView$1;->Dz:Lcom/kingcore/uilib/TypeWriterTextView;

    invoke-static {v1}, Lcom/kingcore/uilib/TypeWriterTextView;->b(Lcom/kingcore/uilib/TypeWriterTextView;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 34
    iget-object v0, p0, Lcom/kingcore/uilib/TypeWriterTextView$1;->Dz:Lcom/kingcore/uilib/TypeWriterTextView;

    invoke-static {v0}, Lcom/kingcore/uilib/TypeWriterTextView;->f(Lcom/kingcore/uilib/TypeWriterTextView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/kingcore/uilib/TypeWriterTextView$1;->Dz:Lcom/kingcore/uilib/TypeWriterTextView;

    invoke-static {v1}, Lcom/kingcore/uilib/TypeWriterTextView;->d(Lcom/kingcore/uilib/TypeWriterTextView;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/kingcore/uilib/TypeWriterTextView$1;->Dz:Lcom/kingcore/uilib/TypeWriterTextView;

    invoke-static {v2}, Lcom/kingcore/uilib/TypeWriterTextView;->e(Lcom/kingcore/uilib/TypeWriterTextView;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 36
    :cond_0
    return-void
.end method
