.class public Lcom/kingroot/kinguser/advance/manager/AdvancePermService$6;
.super Lcom/kingroot/kinguser/root/mgr/IAppRulesChangeListener$Stub;
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
    .line 381
    iput-object p1, p0, Lcom/kingroot/kinguser/advance/manager/AdvancePermService$6;->this$0:Lcom/kingroot/kinguser/ahf;

    invoke-direct {p0}, Lcom/kingroot/kinguser/root/mgr/IAppRulesChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppRulesChangeListener()V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/manager/AdvancePermService$6;->this$0:Lcom/kingroot/kinguser/ahf;

    invoke-static {v0}, Lcom/kingroot/kinguser/ahf;->b(Lcom/kingroot/kinguser/ahf;)V

    .line 386
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/manager/AdvancePermService$6;->this$0:Lcom/kingroot/kinguser/ahf;

    invoke-static {v0}, Lcom/kingroot/kinguser/ahf;->e(Lcom/kingroot/kinguser/ahf;)V

    .line 387
    return-void
.end method
