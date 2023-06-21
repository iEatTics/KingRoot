.class Lcom/applisto/appcloner/classes/PasswordActivity$3;
.super Ljava/lang/Object;
.source "PasswordActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/PasswordActivity;->getLongPressRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCount:I

.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/applisto/appcloner/classes/PasswordActivity;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/PasswordActivity;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/applisto/appcloner/classes/PasswordActivity$3;->this$0:Lcom/applisto/appcloner/classes/PasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/applisto/appcloner/classes/PasswordActivity$3;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$PasswordActivity$3()V
    .locals 1

    const/4 v0, 0x0

    .line 376
    iput v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity$3;->mCount:I

    return-void
.end method

.method public run()V
    .locals 4

    .line 370
    iget-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity$3;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 371
    iget v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity$3;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity$3;->mCount:I

    .line 373
    iget v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity$3;->mCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 374
    iget-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity$3;->this$0:Lcom/applisto/appcloner/classes/PasswordActivity;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/PasswordActivity;->access$400(Lcom/applisto/appcloner/classes/PasswordActivity;)V

    goto :goto_0

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity$3;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/applisto/appcloner/classes/-$$Lambda$PasswordActivity$3$dtKTXKLiCIp97MWlz7ZSfdVOtDc;

    invoke-direct {v1, p0}, Lcom/applisto/appcloner/classes/-$$Lambda$PasswordActivity$3$dtKTXKLiCIp97MWlz7ZSfdVOtDc;-><init>(Lcom/applisto/appcloner/classes/PasswordActivity$3;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
