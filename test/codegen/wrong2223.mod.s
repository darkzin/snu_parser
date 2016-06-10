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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]

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
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t6
    jmp     l_f0_exit              
l_f0_2_while_cond:
    jmp     l_f0_13                 #   3:     goto   13
l_f0_13:
    jmp     l_f0_5                  #   5:     goto   5
    jmp     l_f0_5                  #   6:     goto   5
    jmp     l_f0_5                  #   7:     goto   5
l_f0_5:
    movl    $1, %eax                #   9:     assign t7 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_7                  #  10:     goto   7
    movl    $0, %eax                #  11:     assign t7 <- 0
    movb    %al, -14(%ebp)         
l_f0_7:
    movl    $1, %eax                #  13:     if     1 = t7 goto 3_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_3_while_body      
    jmp     l_f0_1                  #  14:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #  16:     goto   2_while_cond
l_f0_1:
    movl    $97, %eax               #  18:     assign v1 <- 97
    movb    %al, 8(%ebp)           

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
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 17 of <array 45 of <array 31 of <array 54 of <array 86 of <bool>>>>>>> %ebp+12 ]
    #    -24(%ebp)   4  [ $v3       <int> %ebp-24 ]

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
    call    dummyBOOLfunc           #   0:     call   t6 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $9107, %eax             #   1:     if     9107 <= 89220 goto 2_if_true
    movl    $89220, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   2:     goto   3_if_false
l_f1_2_if_true:
    jmp     l_f1_5                  #   4:     goto   5
l_f1_5:
    jmp     l_f1_10_if_false        #   6:     goto   10_if_false
    jmp     l_f1_8                  #   7:     goto   8
l_f1_10_if_false:
l_f1_8:
    jmp     l_f1_1                  #  10:     goto   1
l_f1_3_if_false:
l_f1_1:
    movl    $4623, %eax             #  13:     div    t7 <- 4623, 27247
    movl    $27247, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     assign v3 <- t7
    movl    %eax, -24(%ebp)        

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t8       <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]

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
l_f2_1_while_cond:
    jmp     l_f2_5                  #   1:     goto   5
    jmp     l_f2_5                  #   2:     goto   5
    jmp     l_f2_5                  #   3:     goto   5
    jmp     l_f2_5                  #   4:     goto   5
    jmp     l_f2_5                  #   5:     goto   5
    movl    $1, %eax                #   6:     assign t6 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_6                  #   7:     goto   6
l_f2_5:
    movl    $0, %eax                #   9:     assign t6 <- 0
    movb    %al, -13(%ebp)         
l_f2_6:
    movl    $0, %eax                #  11:     if     0 = t6 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #  12:     goto   0
l_f2_2_while_body:
l_f2_18_while_cond:
    movl    $100, %eax              #  15:     if     100 # 99 goto 19_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_19_while_body     
    jmp     l_f2_17                 #  16:     goto   17
l_f2_19_while_body:
    jmp     l_f2_18_while_cond      #  18:     goto   18_while_cond
l_f2_17:
l_f2_22_while_cond:
    movl    $0, %eax                #  21:     if     0 # 1 goto 23_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_23_while_body     
    jmp     l_f2_21                 #  22:     goto   21
l_f2_23_while_body:
    jmp     l_f2_22_while_cond      #  24:     goto   22_while_cond
l_f2_21:
    movl    $36414, %eax            #  26:     assign v2 <- 36414
    movl    %eax, -20(%ebp)        
l_f2_27_while_cond:
    movl    $67196, %eax            #  28:     if     67196 > 98942 goto 28_while_body
    movl    $98942, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_28_while_body     
    jmp     l_f2_26                 #  29:     goto   26
l_f2_28_while_body:
    jmp     l_f2_27_while_cond      #  31:     goto   27_while_cond
l_f2_26:
    call    dummyBOOLfunc           #  33:     call   t7 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
l_f2_32_while_cond:
    movl    $36901, %eax            #  35:     if     36901 <= 24065 goto 33_while_body
    movl    $24065, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_33_while_body     
    jmp     l_f2_31                 #  36:     goto   31
l_f2_33_while_body:
    jmp     l_f2_32_while_cond      #  38:     goto   32_while_cond
l_f2_31:
    jmp     l_f2_1_while_cond       #  40:     goto   1_while_cond
l_f2_0:
    call    dummyProcedure          #  42:     call   dummyProcedure
    call    dummyCHARfunc           #  43:     call   t8 <- dummyCHARfunc
    movb    %al, -15(%ebp)         

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 17 of <array 45 of <array 31 of <array 54 of <array 86 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t4       <bool> %ebp-26 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]

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
    jmp     l_test_exit            
l_test_2_while_cond:
    movl    $59042, %eax            #   2:     assign v0 <- 59042
    movl    %eax, v0               
    jmp     l_test_2_while_cond     #   3:     goto   2_while_cond
    jmp     l_test_6                #   4:     goto   6
    jmp     l_test_7                #   5:     goto   7
l_test_6:
    movl    $1, %eax                #   7:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_8                #   8:     goto   8
l_test_7:
    movl    $0, %eax                #  10:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_8:
    movzbl  -13(%ebp), %eax         #  12:     assign v1 <- t0
    movb    %al, v1                
l_test_11_while_cond:
    movl    $107, %eax              #  14:     if     107 > 74308 goto 12_while_body
    movl    $74308, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_12_while_body   
    jmp     l_test_10               #  15:     goto   10
l_test_12_while_body:
    leal    _str_1, %eax            #  17:     &()    t1 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     param  0 <- t1
    pushl   %eax                   
    call    WriteStr                #  19:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_11_while_cond    #  20:     goto   11_while_cond
l_test_10:
l_test_19_while_cond:
    jmp     l_test_18               #  23:     goto   18
    jmp     l_test_19_while_cond    #  24:     goto   19_while_cond
l_test_18:
    movl    $77780, %eax            #  26:     assign v0 <- 77780
    movl    %eax, v0               
    leal    v2, %eax                #  27:     &()    t2 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  28:     param  1 <- t2
    pushl   %eax                   
    movl    $32991, %eax            #  29:     if     32991 >= 38750 goto 23
    movl    $38750, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_23              
    jmp     l_test_24               #  30:     goto   24
l_test_23:
    movl    $1, %eax                #  32:     assign t3 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_25               #  33:     goto   25
l_test_24:
    movl    $0, %eax                #  35:     assign t3 <- 0
    movb    %al, -25(%ebp)         
l_test_25:
    movzbl  -25(%ebp), %eax         #  37:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #  38:     call   t4 <- f1
    addl    $8, %esp               
    movb    %al, -26(%ebp)         
    jmp     l_test_29_if_false      #  39:     goto   29_if_false
    jmp     l_test_27               #  40:     goto   27
l_test_29_if_false:
l_test_27:
    call    ReadInt                 #  43:     call   t5 <- ReadInt
    movl    %eax, -32(%ebp)        
    jmp     l_test_15               #  44:     goto   15
l_test_15:

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
    .align   4
v2:                                 # <array 17 of <array 45 of <array 31 of <array 54 of <array 86 of <bool>>>>>>
    .long    5
    .long   17
    .long   45
    .long   31
    .long   54
    .long   86
    .skip 110132460








    # end of global data section
    #-----------------------------------------

    .end
##################################################
