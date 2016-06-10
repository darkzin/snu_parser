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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]

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
    movl    $97, %eax               #   0:     if     97 <= 97 goto 1
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_1                 
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   8:     return t3
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #   9:     call   t4 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  10:     return t4
    jmp     l_f0_exit              
    jmp     l_f0_8                  #  11:     goto   8
    jmp     l_f0_8                  #  12:     goto   8
    movl    $1, %eax                #  13:     assign t5 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_9                  #  14:     goto   9
l_f0_8:
    movl    $0, %eax                #  16:     assign t5 <- 0
    movb    %al, -15(%ebp)         
l_f0_9:
    movzbl  -15(%ebp), %eax         #  18:     return t5
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $v0       <char> %ebp-15 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   1:     if     100 >= t3 goto 1_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
l_f1_1_if_true:
    movl    $97, %eax               #   4:     assign v0 <- 97
    movb    %al, -15(%ebp)         
    jmp     l_f1_exit              
    jmp     l_f1_0                  #   6:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyCHARfunc           #   9:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  10:     assign v0 <- t4
    movb    %al, -15(%ebp)         
    jmp     l_f1_exit              

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t7       <char> %ebp-29 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 75 of <array 38 of <array 68 of <array 61 of <array 56 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

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
l_f2_1_while_cond:
    movl    $58091, %eax            #   1:     div    t3 <- 58091, 48706
    movl    $48706, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     div    t4 <- t3, 56138
    movl    $56138, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     div    t5 <- t4, 82685
    movl    $82685, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     div    t6 <- t5, 35996
    movl    $35996, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $95100, %eax            #   5:     if     95100 <= t6 goto 2_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_2_while_body      
    jmp     l_f2_0                  #   6:     goto   0
l_f2_2_while_body:
    movl    $98, %eax               #   8:     return 98
    jmp     l_f2_exit              
    call    dummyProcedure          #   9:     call   dummyProcedure
    jmp     l_f2_1_while_cond       #  10:     goto   1_while_cond
l_f2_0:
    call    dummyCHARfunc           #  12:     call   t7 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  13:     return t7
    jmp     l_f2_exit              
    movl    $87414, %eax            #  14:     div    t8 <- 87414, 18912
    movl    $18912, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  15:     assign v2 <- t8
    movl    %eax, 16(%ebp)         

l_f2_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]

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
    movl    $63676, %eax            #   0:     if     63676 < 86225 goto 1_if_true
    movl    $86225, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
l_test_5_while_cond:
    movl    $40863, %eax            #   4:     if     40863 # 74796 goto 6_while_body
    movl    $74796, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_6_while_body    
    jmp     l_test_4                #   5:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #   7:     goto   5_while_cond
l_test_4:
    call    dummyBOOLfunc           #   9:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_9                #  10:     goto   9
l_test_9:
    jmp     l_test_0                #  12:     goto   0
l_test_2_if_false:
l_test_0:
    call    dummyINTfunc            #  15:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    call    ReadInt                 #  16:     call   t2 <- ReadInt
    movl    %eax, -24(%ebp)        
l_test_18_while_cond:
    movl    $78490, %eax            #  18:     if     78490 > 2094 goto 19_while_body
    movl    $2094, %ebx            
    cmpl    %ebx, %eax             
    jg      l_test_19_while_body   
    jmp     l_test_17               #  19:     goto   17
l_test_19_while_body:
    jmp     l_test_exit            
l_test_23_while_cond:
    movl    $98, %eax               #  23:     if     98 # 98 goto 24_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_24_while_body   
    jmp     l_test_22               #  24:     goto   22
l_test_24_while_body:
    jmp     l_test_23_while_cond    #  26:     goto   23_while_cond
l_test_22:
    jmp     l_test_18_while_cond    #  28:     goto   18_while_cond
l_test_17:
    jmp     l_test_13               #  30:     goto   13
l_test_13:
    jmp     l_test_exit            
    jmp     l_test_26               #  33:     goto   26
l_test_26:

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
