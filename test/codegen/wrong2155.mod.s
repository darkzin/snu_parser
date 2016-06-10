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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t6       <bool> %ebp-33 ]
    #    -34(%ebp)   1  [ $v0       <char> %ebp-34 ]
    #    -35(%ebp)   1  [ $v1       <bool> %ebp-35 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $99, %eax               #   0:     if     99 # 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    call    dummyCHARfunc           #   3:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   4:     assign v0 <- 97
    movb    %al, -34(%ebp)         
    call    ReadInt                 #   5:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f0_9_if_false         #   6:     goto   9_if_false
    jmp     l_f0_7                  #   7:     goto   7
l_f0_9_if_false:
l_f0_7:
    call    ReadInt                 #  10:     call   t3 <- ReadInt
    movl    %eax, -24(%ebp)        
    jmp     l_f0_0                  #  11:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $87878, %eax            #  14:     add    t4 <- 87878, 66225
    movl    $66225, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $20855, %eax            #  15:     if     20855 <= t4 goto 12_if_true
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_12_if_true        
    jmp     l_f0_13_if_false        #  16:     goto   13_if_false
l_f0_12_if_true:
    call    dummyINTfunc            #  18:     call   t5 <- dummyINTfunc
    movl    %eax, -32(%ebp)        
    call    WriteLn                 #  19:     call   WriteLn
    movl    $1, %eax                #  20:     assign v1 <- 1
    movb    %al, -35(%ebp)         
    jmp     l_f0_11                 #  21:     goto   11
l_f0_13_if_false:
l_f0_11:
    jmp     l_f0_19                 #  24:     goto   19
    jmp     l_f0_20                 #  25:     goto   20
l_f0_19:
    movl    $1, %eax                #  27:     assign t6 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f0_21                 #  28:     goto   21
l_f0_20:
    movl    $0, %eax                #  30:     assign t6 <- 0
    movb    %al, -33(%ebp)         
l_f0_21:
    movzbl  -33(%ebp), %eax         #  32:     return t6
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -15(%ebp)   1  [ $v2       <bool> %ebp-15 ]

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
    movl    $100, %eax              #   0:     if     100 < 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_4                  #   3:     goto   4
l_f1_4:
    movl    $97, %eax               #   5:     if     97 = 99 goto 8
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_8                 
    jmp     l_f1_9                  #   6:     goto   9
l_f1_8:
    movl    $1, %eax                #   8:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_10                 #   9:     goto   10
l_f1_9:
    movl    $0, %eax                #  11:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f1_10:
    movzbl  -13(%ebp), %eax         #  13:     return t1
    jmp     l_f1_exit              
    jmp     l_f1_0                  #  14:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $0, %eax                #  17:     if     0 # 1 goto 13_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_13_if_true        
    jmp     l_f1_14_if_false        #  18:     goto   14_if_false
l_f1_13_if_true:
    movl    $81776, %eax            #  20:     if     81776 >= 118 goto 17
    movl    $118, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_17                
    jmp     l_f1_18                 #  21:     goto   18
l_f1_17:
    movl    $1, %eax                #  23:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_19                 #  24:     goto   19
l_f1_18:
    movl    $0, %eax                #  26:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f1_19:
    movzbl  -14(%ebp), %eax         #  28:     assign v2 <- t2
    movb    %al, -15(%ebp)         
    movl    $0, %eax                #  29:     return 0
    jmp     l_f1_exit              
    jmp     l_f1_22                 #  30:     goto   22
l_f1_22:
    movl    $67942, %eax            #  32:     if     67942 <= 70099 goto 26_if_true
    movl    $70099, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_26_if_true        
    jmp     l_f1_27_if_false        #  33:     goto   27_if_false
l_f1_26_if_true:
    jmp     l_f1_25                 #  35:     goto   25
l_f1_27_if_false:
l_f1_25:
    movl    $25426, %eax            #  38:     assign v0 <- 25426
    movl    %eax, 8(%ebp)          
    jmp     l_f1_12                 #  39:     goto   12
l_f1_14_if_false:
l_f1_12:
    movl    $1, %eax                #  42:     assign v2 <- 1
    movb    %al, -15(%ebp)         

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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 91 of <array 77 of <array 7 of <array 93 of <array 86 of <bool>>>>>>> %ebp+8 ]
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
    movl    $64220, %eax            #   0:     if     64220 < 39662 goto 1_if_true
    movl    $39662, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $86473, %eax            #   3:     if     86473 < 55207 goto 5_if_true
    movl    $55207, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   4:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_4                  #   6:     goto   4
l_f2_6_if_false:
l_f2_4:
    movl    $61856, %eax            #   9:     if     61856 >= 11 goto 9_if_true
    movl    $11, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_9_if_true         
    jmp     l_f2_10_if_false        #  10:     goto   10_if_false
l_f2_9_if_true:
    jmp     l_f2_8                  #  12:     goto   8
l_f2_10_if_false:
l_f2_8:
    jmp     l_f2_0                  #  15:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_13_while_cond:
    movl    $98, %eax               #  19:     if     98 > 100 goto 14_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_14_while_body     
    jmp     l_f2_12                 #  20:     goto   12
l_f2_14_while_body:
l_f2_17_while_cond:
    jmp     l_f2_21                 #  23:     goto   21
    jmp     l_f2_21                 #  24:     goto   21
    movl    $1, %eax                #  25:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_22                 #  26:     goto   22
l_f2_21:
    movl    $0, %eax                #  28:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f2_22:
    movl    $1, %eax                #  30:     if     1 # t1 goto 18_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_18_while_body     
    jmp     l_f2_16                 #  31:     goto   16
l_f2_18_while_body:
    jmp     l_f2_17_while_cond      #  33:     goto   17_while_cond
l_f2_16:
    jmp     l_f2_13_while_cond      #  35:     goto   13_while_cond
l_f2_12:
    movl    $1, %eax                #  37:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_32                 #  38:     goto   32
    movl    $0, %eax                #  39:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f2_32:
    movzbl  -14(%ebp), %eax         #  41:     if     t2 = 0 goto 26
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_26                
    jmp     l_f2_27                 #  42:     goto   27
l_f2_26:
    movl    $1, %eax                #  44:     assign t3 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_28                 #  45:     goto   28
l_f2_27:
    movl    $0, %eax                #  47:     assign t3 <- 0
    movb    %al, -15(%ebp)         
l_f2_28:
    movzbl  -15(%ebp), %eax         #  49:     assign v1 <- t3
    movb    %al, -16(%ebp)         

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]

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
    jmp     l_test_exit            
    jmp     l_test_exit            
    call    dummyCHARfunc           #   2:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
