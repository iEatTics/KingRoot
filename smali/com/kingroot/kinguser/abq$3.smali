.class Lcom/kingroot/kinguser/abq$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/abq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZD:Lcom/kingroot/kinguser/abq;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/abq;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/kingroot/kinguser/abq$3;->ZD:Lcom/kingroot/kinguser/abq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 174
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/abq$3;->ZD:Lcom/kingroot/kinguser/abq;

    iget-boolean v0, v0, Lcom/kingroot/kinguser/abq;->Zw:Z

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/kingroot/kinguser/abq$3;->ZD:Lcom/kingroot/kinguser/abq;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abq;->rd()V

    goto :goto_0

    .line 177
    :cond_0
    return-void
.end method
