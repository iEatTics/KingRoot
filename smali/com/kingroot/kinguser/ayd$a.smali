.class Lcom/kingroot/kinguser/ayd$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ayd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public final bcH:Ljava/lang/Runnable;

.field public final bcI:J

.field public final id:I


# direct methods
.method constructor <init>(ILjava/lang/Runnable;J)V
    .locals 1
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/kingroot/kinguser/ayd$a;->id:I

    .line 27
    iput-object p2, p0, Lcom/kingroot/kinguser/ayd$a;->bcH:Ljava/lang/Runnable;

    .line 28
    iput-wide p3, p0, Lcom/kingroot/kinguser/ayd$a;->bcI:J

    .line 29
    return-void
.end method


# virtual methods
.method a(Lcom/kingroot/kinguser/ayd$a;)Z
    .locals 4

    .prologue
    .line 35
    iget v0, p0, Lcom/kingroot/kinguser/ayd$a;->id:I

    iget v1, p1, Lcom/kingroot/kinguser/ayd$a;->id:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/ayd$a;->bcH:Ljava/lang/Runnable;

    iget-object v1, p1, Lcom/kingroot/kinguser/ayd$a;->bcH:Ljava/lang/Runnable;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/kingroot/kinguser/ayd$a;->bcI:J

    iget-wide v2, p1, Lcom/kingroot/kinguser/ayd$a;->bcI:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
