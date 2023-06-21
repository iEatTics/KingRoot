.class Lcom/kingcore/uilib/BaseRoundCornerProgressBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zu:Lcom/kingcore/uilib/BaseRoundCornerProgressBar;


# direct methods
.method constructor <init>(Lcom/kingcore/uilib/BaseRoundCornerProgressBar;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar$1;->zu:Lcom/kingcore/uilib/BaseRoundCornerProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar$1;->zu:Lcom/kingcore/uilib/BaseRoundCornerProgressBar;

    invoke-static {v0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->a(Lcom/kingcore/uilib/BaseRoundCornerProgressBar;)V

    .line 158
    iget-object v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar$1;->zu:Lcom/kingcore/uilib/BaseRoundCornerProgressBar;

    invoke-static {v0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->b(Lcom/kingcore/uilib/BaseRoundCornerProgressBar;)V

    .line 159
    return-void
.end method
