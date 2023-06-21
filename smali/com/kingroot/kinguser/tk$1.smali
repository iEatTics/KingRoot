.class Lcom/kingroot/kinguser/tk$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/tk;->s(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Hl:Lcom/kingroot/kinguser/tk;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/tk;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/kingroot/kinguser/tk$1;->Hl:Lcom/kingroot/kinguser/tk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/kingroot/kinguser/tk$1;->Hl:Lcom/kingroot/kinguser/tk;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/tk;->release()V

    .line 123
    return-void
.end method
