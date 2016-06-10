##################################################
# test
#

    #-----------------------------------------
    # text section
    #
    .text
    .align 4

    # entry point and pre-defined functions
    .global main
    .extern DIM
    .extern DOFS
    .extern ReadInt
    .extern WriteInt
    .extern WriteStr
    .extern WriteChar
    .extern WriteLn

    # scope dummyINTfunc
dummyINTfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyINTfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyCHARfunc
dummyCHARfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyCHARfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyBOOLfunc
dummyBOOLfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyBOOLfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyProcedure
dummyProcedure:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyProcedure_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f0
f0:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #    -24(%ebp)   4  [ $v2       <int> %ebp-24 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    movl    $42529, %eax            #   0:     assign v2 <- 42529
    movl    %eax, -24(%ebp)        
    jmp     l_f0_6_if_false         #   1:     goto   6_if_false
    jmp     l_f0_4                  #   2:     goto   4
l_f0_6_if_false:
l_f0_4:
    jmp     l_f0_7                  #   5:     goto   7
l_f0_7:
    movl    $13364, %eax            #   7:     if     13364 >= 10406 goto 11
    movl    $10406, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_11                
    jmp     l_f0_12                 #   8:     goto   12
l_f0_11:
    movl    $1, %eax                #  10:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_13                 #  11:     goto   13
l_f0_12:
    movl    $0, %eax                #  13:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f0_13:
    movzbl  -13(%ebp), %eax         #  15:     assign v1 <- t5
    movb    %al, 8(%ebp)           
    jmp     l_f0_0                  #  16:     goto   0
l_f0_0:
    call    dummyCHARfunc           #  18:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  19:     return t6
    jmp     l_f0_exit              
    jmp     l_f0_18_if_false        #  20:     goto   18_if_false
    movl    $69568, %eax            #  21:     param  0 <- 69568
    pushl   %eax                   
    call    WriteInt                #  22:     call   WriteInt
    addl    $4, %esp               
    call    dummyINTfunc            #  23:     call   t7 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $100, %eax              #  24:     return 100
    jmp     l_f0_exit              
    call    dummyProcedure          #  25:     call   dummyProcedure
    jmp     l_f0_25_if_false        #  26:     goto   25_if_false
    jmp     l_f0_23                 #  27:     goto   23
l_f0_25_if_false:
l_f0_23:
    movl    $100, %eax              #  30:     return 100
    jmp     l_f0_exit              
    jmp     l_f0_16                 #  31:     goto   16
l_f0_18_if_false:
l_f0_16:

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $v1       <bool> %ebp-16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_f1_exit              
l_f1_2_while_cond:
    movl    $98, %eax               #   2:     if     98 <= 99 goto 5_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   3:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_4                  #   5:     goto   4
l_f1_6_if_false:
l_f1_4:
    movl    $22815, %eax            #   8:     param  0 <- 22815
    pushl   %eax                   
    call    WriteInt                #   9:     call   WriteInt
    addl    $4, %esp               
    movl    $99, %eax               #  10:     if     99 <= 97 goto 10
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_10                
    jmp     l_f1_11                 #  11:     goto   11
l_f1_10:
    movl    $1, %eax                #  13:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_12                 #  14:     goto   12
l_f1_11:
    movl    $0, %eax                #  16:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f1_12:
    movzbl  -13(%ebp), %eax         #  18:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  19:     call   t6 <- f0
    addl    $4, %esp               
    movb    %al, -14(%ebp)         
    movl    $79852, %eax            #  20:     if     79852 < 14138 goto 15_if_true
    movl    $14138, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_15_if_true        
    jmp     l_f1_16_if_false        #  21:     goto   16_if_false
l_f1_15_if_true:
    jmp     l_f1_14                 #  23:     goto   14
l_f1_16_if_false:
l_f1_14:
    jmp     l_f1_exit              
l_f1_20_while_cond:
    jmp     l_f1_19                 #  28:     goto   19
    jmp     l_f1_20_while_cond      #  29:     goto   20_while_cond
l_f1_19:
    movl    $98, %eax               #  31:     if     98 # 97 goto 23_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_23_if_true        
    jmp     l_f1_24_if_false        #  32:     goto   24_if_false
l_f1_23_if_true:
    jmp     l_f1_22                 #  34:     goto   22
l_f1_24_if_false:
l_f1_22:
    jmp     l_f1_exit              
    jmp     l_f1_2_while_cond       #  38:     goto   2_while_cond
    call    dummyBOOLfunc           #  39:     call   t7 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  40:     assign v1 <- t7
    movb    %al, -16(%ebp)         

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <char> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    jmp     l_f2_0                  #   1:     goto   0
l_f2_2_if_false:
l_f2_0:
    jmp     l_f2_6_if_false         #   4:     goto   6_if_false
    jmp     l_f2_6_if_false         #   5:     goto   6_if_false
    jmp     l_f2_8                  #   6:     goto   8
l_f2_8:
    jmp     l_f2_11                 #   8:     goto   11
l_f2_11:
    jmp     l_f2_4                  #  10:     goto   4
l_f2_6_if_false:
l_f2_4:
    jmp     l_f2_16_if_false        #  13:     goto   16_if_false
    jmp     l_f2_14                 #  14:     goto   14
l_f2_16_if_false:
l_f2_14:

l_f2_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <char> %ebp-22 ]
    #    -23(%ebp)   1  [ $t4       <bool> %ebp-23 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    movl    $100, %eax              #   0:     if     100 <= 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_exit            
    call    ReadInt                 #   4:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_0                #   5:     goto   0
l_test_2_if_false:
l_test_0:
l_test_7_while_cond:
    jmp     l_test_6                #   9:     goto   6
l_test_10_while_cond:
    movl    $98, %eax               #  11:     if     98 <= 99 goto 11_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_11_while_body   
    jmp     l_test_9                #  12:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  14:     goto   10_while_cond
l_test_9:
    movl    $98, %eax               #  16:     assign v0 <- 98
    movb    %al, v0                
    jmp     l_test_exit            
    movl    $100, %eax              #  18:     if     100 < 99 goto 16_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_16_if_true      
    jmp     l_test_17_if_false      #  19:     goto   17_if_false
l_test_16_if_true:
    jmp     l_test_15               #  21:     goto   15
l_test_17_if_false:
l_test_15:
    call    dummyINTfunc            #  24:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_test_21_while_cond:
    jmp     l_test_20               #  26:     goto   20
    jmp     l_test_21_while_cond    #  27:     goto   21_while_cond
l_test_20:
    jmp     l_test_7_while_cond     #  29:     goto   7_while_cond
l_test_6:
    call    dummyCHARfunc           #  31:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $100, %eax              #  32:     if     100 >= t2 goto 24_if_true
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_24_if_true      
    jmp     l_test_25_if_false      #  33:     goto   25_if_false
l_test_24_if_true:
l_test_28_while_cond:
    jmp     l_test_28_while_cond    #  36:     goto   28_while_cond
    jmp     l_test_23               #  37:     goto   23
l_test_25_if_false:
l_test_23:
    call    dummyCHARfunc           #  40:     call   t3 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movl    $56715, %eax            #  41:     assign v1 <- 56715
    movl    %eax, v1               
    movl    $82387, %eax            #  42:     if     82387 < 69271 goto 33_if_true
    movl    $69271, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_33_if_true      
    jmp     l_test_34_if_false      #  43:     goto   34_if_false
l_test_33_if_true:
    jmp     l_test_exit            
    movl    $88498, %eax            #  46:     if     88498 <= 83462 goto 38_if_true
    movl    $83462, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_38_if_true      
    jmp     l_test_39_if_false      #  47:     goto   39_if_false
l_test_38_if_true:
    jmp     l_test_37               #  49:     goto   37
l_test_39_if_false:
l_test_37:
    call    f1                      #  52:     call   f1
    movl    $99, %eax               #  53:     assign v0 <- 99
    movb    %al, v0                
    movl    $99, %eax               #  54:     if     99 <= 100 goto 44
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_44              
    jmp     l_test_45               #  55:     goto   45
l_test_44:
    movl    $1, %eax                #  57:     assign t4 <- 1
    movb    %al, -23(%ebp)         
    jmp     l_test_46               #  58:     goto   46
l_test_45:
    movl    $0, %eax                #  60:     assign t4 <- 0
    movb    %al, -23(%ebp)         
l_test_46:
    movzbl  -23(%ebp), %eax         #  62:     assign v2 <- t4
    movb    %al, v2                
    jmp     l_test_48               #  63:     goto   48
l_test_48:
    jmp     l_test_32               #  65:     goto   32
l_test_34_if_false:
l_test_32:

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # end of text section
    #-----------------------------------------

    #-----------------------------------------
    # global data section
    #
    .data
    .align 4

    # scope: test
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4
v2:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
