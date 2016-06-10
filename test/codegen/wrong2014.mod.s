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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #    -22(%ebp)   1  [ $v3       <char> %ebp-22 ]

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
    movl    $30477, %eax            #   0:     mul    t2 <- 30477, 80605
    movl    $80605, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v2 <- t2
    movl    %eax, 12(%ebp)         
    movl    $95031, %eax            #   2:     add    t3 <- 95031, 64633
    movl    $64633, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $87194, %eax            #   3:     if     87194 <= t3 goto 2
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_2                 
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $1, %eax                #   6:     assign t4 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_4                  #   7:     goto   4
l_f0_3:
    movl    $0, %eax                #   9:     assign t4 <- 0
    movb    %al, -21(%ebp)         
l_f0_4:
    movzbl  -21(%ebp), %eax         #  11:     assign v1 <- t4
    movb    %al, 8(%ebp)           
    movl    $99, %eax               #  12:     assign v3 <- 99
    movb    %al, -22(%ebp)         

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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 67 of <array 78 of <array 2 of <array 13 of <array 51 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 86 of <array 58 of <array 11 of <array 18 of <int>>>>>>> %ebp+16 ]
    #    -15(%ebp)   1  [ $v4       <char> %ebp-15 ]

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
    movl    $92432, %eax            #   0:     if     92432 > 38248 goto 1_if_true
    movl    $38248, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    call    dummyBOOLfunc           #   3:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   4:     assign v4 <- 99
    movb    %al, -15(%ebp)         
    jmp     l_f1_0                  #   5:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_7_while_cond:
    movl    $100, %eax              #   9:     if     100 < 97 goto 8_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_8_while_body      
    jmp     l_f1_6                  #  10:     goto   6
l_f1_8_while_body:
    jmp     l_f1_7_while_cond       #  12:     goto   7_while_cond
l_f1_6:
    call    dummyCHARfunc           #  14:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t9       <bool> %ebp-41 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 92 of <array 24 of <array 39 of <array 29 of <array 60 of <char>>>>>>> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    ReadInt                 #   0:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f2_2_if_true          #   1:     goto   2_if_true
    jmp     l_f2_3_if_false         #   2:     goto   3_if_false
l_f2_2_if_true:
l_f2_6_while_cond:
    movl    $100, %eax              #   5:     if     100 = 99 goto 7_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_7_while_body      
    jmp     l_f2_5                  #   6:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #   8:     goto   6_while_cond
l_f2_5:
    jmp     l_f2_11_if_false        #  10:     goto   11_if_false
    jmp     l_f2_9                  #  11:     goto   9
l_f2_11_if_false:
l_f2_9:
    call    WriteLn                 #  14:     call   WriteLn
    movl    $70085, %eax            #  15:     if     70085 < 48402 goto 14
    movl    $48402, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_14                
    jmp     l_f2_15                 #  16:     goto   15
l_f2_14:
    movl    $1, %eax                #  18:     assign t3 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_16                 #  19:     goto   16
l_f2_15:
    movl    $0, %eax                #  21:     assign t3 <- 0
    movb    %al, -17(%ebp)         
l_f2_16:
    movzbl  -17(%ebp), %eax         #  23:     return t3
    jmp     l_f2_exit              
    movl    $97, %eax               #  24:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  25:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f2_1                  #  26:     goto   1
l_f2_3_if_false:
l_f2_1:
    movl    $27479, %eax            #  29:     mul    t4 <- 27479, 33161
    movl    $33161, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  30:     mul    t5 <- t4, 22851
    movl    $22851, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  31:     div    t6 <- t5, 17916
    movl    $17916, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  32:     mul    t7 <- t6, 73007
    movl    $73007, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  33:     mul    t8 <- t7, 8097
    movl    $8097, %ebx            
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    $29945, %eax            #  34:     if     29945 < t8 goto 20
    movl    -40(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_20                
    jmp     l_f2_21                 #  35:     goto   21
l_f2_20:
    movl    $1, %eax                #  37:     assign t9 <- 1
    movb    %al, -41(%ebp)         
    jmp     l_f2_22                 #  38:     goto   22
l_f2_21:
    movl    $0, %eax                #  40:     assign t9 <- 0
    movb    %al, -41(%ebp)         
l_f2_22:
    movzbl  -41(%ebp), %eax         #  42:     return t9
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
l_test_1_while_cond:
    movl    $100, %eax              #   1:     if     100 < 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_4                #   4:     goto   4
l_test_4:
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
l_test_0:
    jmp     l_test_9                #   8:     goto   9
    jmp     l_test_9                #   9:     goto   9
l_test_9:
    movl    $1, %eax                #  11:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_11               #  12:     goto   11
    movl    $0, %eax                #  13:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_11:
    movzbl  -13(%ebp), %eax         #  15:     assign v0 <- t0
    movb    %al, v0                
l_test_16_while_cond:
    jmp     l_test_20               #  17:     goto   20
    jmp     l_test_17_while_body    #  18:     goto   17_while_body
l_test_20:
    jmp     l_test_17_while_body    #  20:     goto   17_while_body
    jmp     l_test_15               #  21:     goto   15
l_test_17_while_body:
    jmp     l_test_16_while_cond    #  23:     goto   16_while_cond
l_test_15:
    movl    $8296, %eax             #  25:     add    t1 <- 8296, 12276
    movl    $12276, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  26:     if     t1 <= 94952 goto 27_if_true
    movl    $94952, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_27_if_true      
    jmp     l_test_28_if_false      #  27:     goto   28_if_false
l_test_27_if_true:
    jmp     l_test_30               #  29:     goto   30
l_test_30:
    movl    $67421, %eax            #  31:     if     67421 > 61368 goto 34_if_true
    movl    $61368, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_34_if_true      
    jmp     l_test_35_if_false      #  32:     goto   35_if_false
l_test_34_if_true:
    jmp     l_test_33               #  34:     goto   33
l_test_35_if_false:
l_test_33:
    jmp     l_test_26               #  37:     goto   26
l_test_28_if_false:
l_test_26:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
