.class public Lcom/kingroot/kinguser/biw$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/biw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput p1, p0, Lcom/kingroot/kinguser/biw$b;->type:I

    .line 91
    iput-object p2, p0, Lcom/kingroot/kinguser/biw$b;->name:Ljava/lang/String;

    .line 92
    return-void
.end method
