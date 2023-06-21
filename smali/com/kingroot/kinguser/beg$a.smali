.class Lcom/kingroot/kinguser/beg$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/beg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/beg$1;)V
    .locals 0

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/kingroot/kinguser/beg$a;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 355
    invoke-static {p1}, Lcom/kingroot/kinguser/wl;->d(Ljava/lang/Runnable;)V

    .line 356
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 351
    invoke-static {p1}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 352
    return-void
.end method
