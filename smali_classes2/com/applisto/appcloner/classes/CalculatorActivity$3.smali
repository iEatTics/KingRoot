.class Lcom/applisto/appcloner/classes/CalculatorActivity$3;
.super Ljava/lang/Thread;
.source "CalculatorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/CalculatorActivity;->exit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applisto/appcloner/classes/CalculatorActivity;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/CalculatorActivity;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity$3;->this$0:Lcom/applisto/appcloner/classes/CalculatorActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0xfa

    .line 316
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 319
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
