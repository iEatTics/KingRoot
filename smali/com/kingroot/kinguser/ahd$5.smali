.class Lcom/kingroot/kinguser/ahd$5;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ahd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/ahd;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ahd;)V
    .locals 0

    .prologue
    .line 563
    iput-object p1, p0, Lcom/kingroot/kinguser/ahd$5;->this$0:Lcom/kingroot/kinguser/ahd;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 566
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 567
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd$5;->this$0:Lcom/kingroot/kinguser/ahd;

    invoke-static {v0}, Lcom/kingroot/kinguser/ahd;->b(Lcom/kingroot/kinguser/ahd;)V

    .line 568
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd$5;->this$0:Lcom/kingroot/kinguser/ahd;

    invoke-static {v0}, Lcom/kingroot/kinguser/ahd;->c(Lcom/kingroot/kinguser/ahd;)V

    .line 569
    return-void
.end method
