.class public Lcom/kingroot/kinguser/lt$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/lt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public eF:Ljava/lang/String;

.field public vd:I

.field final synthetic ve:Lcom/kingroot/kinguser/lt;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/lt;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/kingroot/kinguser/lt$a;->ve:Lcom/kingroot/kinguser/lt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/kingroot/kinguser/lt$a;->eF:Ljava/lang/String;

    .line 33
    iput p3, p0, Lcom/kingroot/kinguser/lt$a;->vd:I

    .line 34
    return-void
.end method
