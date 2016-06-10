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
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t4       <char> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t1 <= 100 goto 1
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_1                 
    jmp     l_f0_2                  #   2:     goto   2
l_f0_1:
    movl    $1, %eax                #   4:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $0, %eax                #   7:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f0_3:
    movzbl  -14(%ebp), %eax         #   9:     assign v1 <- t2
    movb    %al, 12(%ebp)          
l_f0_6_while_cond:
    call    dummyCHARfunc           #  11:     call   t3 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    call    dummyCHARfunc           #  12:     call   t4 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
    movzbl  -15(%ebp), %eax         #  13:     if     t3 <= t4 goto 7_while_body
    movzbl  -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_7_while_body      
    jmp     l_f0_5                  #  14:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #  16:     goto   6_while_cond
l_f0_5:
    movl    $99, %eax               #  18:     if     99 = 98 goto 10
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_10                
    jmp     l_f0_11                 #  19:     goto   11
l_f0_10:
    movl    $1, %eax                #  21:     assign t5 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_12                 #  22:     goto   12
l_f0_11:
    movl    $0, %eax                #  24:     assign t5 <- 0
    movb    %al, -17(%ebp)         
l_f0_12:
    movzbl  -17(%ebp), %eax         #  26:     assign v1 <- t5
    movb    %al, 12(%ebp)          

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <bool> %ebp-29 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 57 of <array 96 of <array 10 of <array 12 of <array 30 of <int>>>>>>> %ebp+12 ]
    #    -30(%ebp)   1  [ $v2       <bool> %ebp-30 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $97962, %eax            #   0:     assign v0 <- 97962
    movl    %eax, 8(%ebp)          
    movl    $38864, %eax            #   1:     add    t1 <- 38864, 62779
    movl    $62779, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     sub    t2 <- t1, 33234
    movl    $33234, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t3 <- t2, 10605
    movl    $10605, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     param  0 <- t3
    pushl   %eax                   
    call    WriteInt                #   5:     call   WriteInt
    addl    $4, %esp               
l_f1_3_while_cond:
    movl    $8136, %eax             #   7:     if     8136 = 48966 goto 4_while_body
    movl    $48966, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_4_while_body      
    jmp     l_f1_2                  #   8:     goto   2
l_f1_4_while_body:
    movl    $97, %eax               #  10:     if     97 > 100 goto 7_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_7_if_true         
    jmp     l_f1_8_if_false         #  11:     goto   8_if_false
l_f1_7_if_true:
    jmp     l_f1_6                  #  13:     goto   6
l_f1_8_if_false:
l_f1_6:
    call    dummyINTfunc            #  16:     call   t4 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
l_f1_12_while_cond:
    movl    $81266, %eax            #  18:     if     81266 > 31183 goto 13_while_body
    movl    $31183, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_13_while_body     
    jmp     l_f1_11                 #  19:     goto   11
l_f1_13_while_body:
    jmp     l_f1_12_while_cond      #  21:     goto   12_while_cond
l_f1_11:
l_f1_16_while_cond:
    movl    $94295, %eax            #  24:     if     94295 >= 62417 goto 17_while_body
    movl    $62417, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_17_while_body     
    jmp     l_f1_15                 #  25:     goto   15
l_f1_17_while_body:
    jmp     l_f1_16_while_cond      #  27:     goto   16_while_cond
l_f1_15:
    movl    $0, %eax                #  29:     assign v2 <- 0
    movb    %al, -30(%ebp)         
    call    dummyBOOLfunc           #  30:     call   t5 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    jmp     l_f1_3_while_cond       #  31:     goto   3_while_cond
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -21(%ebp)   1  [ $v2       <bool> %ebp-21 ]

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
l_f2_1_while_cond:
    jmp     l_f2_4                  #   1:     goto   4
    jmp     l_f2_4                  #   2:     goto   4
    jmp     l_f2_5                  #   3:     goto   5
l_f2_4:
    movl    $1, %eax                #   5:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_6                  #   6:     goto   6
l_f2_5:
    movl    $0, %eax                #   8:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f2_6:
    movzbl  -13(%ebp), %eax         #  10:     assign v2 <- t1
    movb    %al, -21(%ebp)         
    jmp     l_f2_1_while_cond       #  11:     goto   1_while_cond
    call    dummyINTfunc            #  12:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $97, %eax               #  13:     assign v0 <- 97
    movb    %al, 8(%ebp)           

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 5 of <char>>> %ebp-16 ]

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
    movl    $94113, %eax            #   0:     param  0 <- 94113
    pushl   %eax                   
    call    WriteInt                #   1:     call   WriteInt
    addl    $4, %esp               
    leal    _str_1, %eax            #   2:     &()    t0 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #   4:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_exit            
    movl    $83626, %eax            #   6:     assign v0 <- 83626
    movl    %eax, v0               
    movl    $0, %eax                #   7:     assign v1 <- 0
    movb    %al, v1                

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

    # scope: test
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
