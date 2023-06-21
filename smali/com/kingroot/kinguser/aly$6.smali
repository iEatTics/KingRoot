.class Lcom/kingroot/kinguser/aly$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aly;->fl(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic azo:I

.field final synthetic this$0:Lcom/kingroot/kinguser/aly;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aly;I)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/kingroot/kinguser/aly$6;->this$0:Lcom/kingroot/kinguser/aly;

    iput p2, p0, Lcom/kingroot/kinguser/aly$6;->azo:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 314
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aly$6;->this$0:Lcom/kingroot/kinguser/aly;

    invoke-static {v1}, Lcom/kingroot/kinguser/aly;->b(Lcom/kingroot/kinguser/aly;)Lcom/kingroot/kinguser/bed;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/kingroot/kinguser/aly$6;->azo:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;[Ljava/lang/Object;)Z

    .line 315
    return-void
.end method
