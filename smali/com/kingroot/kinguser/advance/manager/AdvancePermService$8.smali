.class public Lcom/kingroot/kinguser/advance/manager/AdvancePermService$8;
.super Lcom/kingroot/kinguser/root/log/ILogsChangeListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ahf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/ahf;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/ahf;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/kingroot/kinguser/advance/manager/AdvancePermService$8;->this$0:Lcom/kingroot/kinguser/ahf;

    invoke-direct {p0}, Lcom/kingroot/kinguser/root/log/ILogsChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onLogsChangeListener()V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/manager/AdvancePermService$8;->this$0:Lcom/kingroot/kinguser/ahf;

    invoke-static {v0}, Lcom/kingroot/kinguser/ahf;->c(Lcom/kingroot/kinguser/ahf;)V

    .line 404
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/manager/AdvancePermService$8;->this$0:Lcom/kingroot/kinguser/ahf;

    invoke-static {v0}, Lcom/kingroot/kinguser/ahf;->e(Lcom/kingroot/kinguser/ahf;)V

    .line 405
    return-void
.end method
