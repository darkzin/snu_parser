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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 56 of <array 72 of <array 68 of <array 41 of <array 26 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
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
    movl    $98, %eax               #   0:     if     98 < 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
l_f0_5_while_cond:
    jmp     l_f0_5_while_cond       #   4:     goto   5_while_cond
    jmp     l_f0_0                  #   5:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $66634, %eax            #   8:     assign v2 <- 66634
    movl    %eax, -20(%ebp)        
l_f0_9_while_cond:
    jmp     l_f0_8                  #  10:     goto   8
    jmp     l_f0_8                  #  11:     goto   8
    call    dummyBOOLfunc           #  12:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_9_while_cond       #  13:     goto   9_while_cond
l_f0_8:

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t6       <ptr(4) to <array 7 of <char>>> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 26 of <array 37 of <array 79 of <array 3 of <array 66 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

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
l_f1_1_while_cond:
    jmp     l_f1_2_while_body       #   1:     goto   2_while_body
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    call    dummyINTfunc            #   4:     call   t4 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $42905, %eax            #   5:     if     42905 >= 71384 goto 6
    movl    $71384, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_6                 
    jmp     l_f1_7                  #   6:     goto   7
l_f1_6:
    movl    $1, %eax                #   8:     assign t5 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_8                  #   9:     goto   8
l_f1_7:
    movl    $0, %eax                #  11:     assign t5 <- 0
    movb    %al, -17(%ebp)         
l_f1_8:
    movzbl  -17(%ebp), %eax         #  13:     assign v2 <- t5
    movb    %al, 16(%ebp)          
l_f1_11_while_cond:
    jmp     l_f1_10                 #  15:     goto   10
    jmp     l_f1_11_while_cond      #  16:     goto   11_while_cond
l_f1_10:
    jmp     l_f1_1_while_cond       #  18:     goto   1_while_cond
l_f1_0:
    leal    _str_1, %eax            #  20:     &()    t6 <- _str_1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  21:     param  0 <- t6
    pushl   %eax                   
    call    WriteStr                #  22:     call   WriteStr
    addl    $4, %esp               
l_f1_15_while_cond:
    movl    $1, %eax                #  24:     if     1 = 1 goto 16_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_16_while_body     
    jmp     l_f1_14                 #  25:     goto   14
l_f1_16_while_body:
    movl    $98, %eax               #  27:     if     98 > 98 goto 19_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_19_if_true        
    jmp     l_f1_20_if_false        #  28:     goto   20_if_false
l_f1_19_if_true:
l_f1_23_while_cond:
    jmp     l_f1_22                 #  31:     goto   22
    jmp     l_f1_23_while_cond      #  32:     goto   23_while_cond
l_f1_22:
    jmp     l_f1_18                 #  34:     goto   18
l_f1_20_if_false:
l_f1_18:
    jmp     l_f1_15_while_cond      #  37:     goto   15_while_cond
l_f1_14:

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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 56 of <array 72 of <array 68 of <array 41 of <array 26 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t4       <ptr(4) to <array 56 of <array 72 of <array 68 of <array 41 of <array 26 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <ptr(4) to <array 56 of <array 72 of <array 68 of <array 41 of <array 26 of <char>>>>>>> %ebp-40 ]
    #    -41(%ebp)   1  [ $t9       <char> %ebp-41 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 19 of <array 24 of <array 54 of <array 33 of <array 95 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 61 of <array 29 of <array 48 of <array 8 of <array 17 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 39 of <array 32 of <array 21 of <array 47 of <array 30 of <char>>>>>>> %ebp+20 ]
    #   -292271684(%ebp)  292271640  [ $v4       <array 56 of <array 72 of <array 68 of <array 41 of <array 26 of <char>>>>>> %ebp-292271684 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $292271672, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $73067918, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-292271684(%ebp)     # local array 'v4': 5 dimensions
    movl    $56,-292271680(%ebp)    #   dimension 1: 56 elements
    movl    $72,-292271676(%ebp)    #   dimension 2: 72 elements
    movl    $68,-292271672(%ebp)    #   dimension 3: 68 elements
    movl    $41,-292271668(%ebp)    #   dimension 4: 41 elements
    movl    $26,-292271664(%ebp)    #   dimension 5: 26 elements

    # function body
    movl    $100, %eax              #   0:     param  1 <- 100
    pushl   %eax                   
    leal    -292271684(%ebp), %eax  #   1:     &()    t4 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #   3:     call   t5 <- f0
    addl    $8, %esp               
    movb    %al, -25(%ebp)         
l_f2_2_while_cond:
    movl    $84479, %eax            #   5:     div    t6 <- 84479, 71071
    movl    $71071, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     mul    t7 <- t6, 94600
    movl    $94600, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   7:     if     t7 > 77186 goto 3_while_body
    movl    $77186, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_3_while_body      
    jmp     l_f2_1                  #   8:     goto   1
l_f2_3_while_body:
    jmp     l_f2_2_while_cond       #  10:     goto   2_while_cond
l_f2_1:
    movl    $97, %eax               #  12:     param  1 <- 97
    pushl   %eax                   
    leal    -292271684(%ebp), %eax  #  13:     &()    t8 <- v4
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  14:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #  15:     call   t9 <- f0
    addl    $8, %esp               
    movb    %al, -41(%ebp)         
    movzbl  -41(%ebp), %eax         #  16:     param  1 <- t9
    pushl   %eax                   
    leal    -292271684(%ebp), %eax  #  17:     &()    t10 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  18:     param  0 <- t10
    pushl   %eax                   
    call    f0                      #  19:     call   t11 <- f0
    addl    $8, %esp               
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  20:     return t11
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $292271672, %esp        # remove locals
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
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 56 of <array 72 of <array 68 of <array 41 of <array 26 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
l_test_1_while_cond:
l_test_4_while_cond:
    jmp     l_test_4_while_cond     #   2:     goto   4_while_cond
    call    dummyBOOLfunc           #   3:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_1_while_cond     #   4:     goto   1_while_cond
    call    ReadInt                 #   5:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $97, %eax               #   8:     param  1 <- 97
    pushl   %eax                   
    leal    v0, %eax                #   9:     &()    t2 <- v0
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #  11:     call   t3 <- f0
    addl    $8, %esp               
    movb    %al, -25(%ebp)         
l_test_12_while_cond:
    movl    $1, %eax                #  13:     assign v1 <- 1
    movb    %al, v1                
l_test_16_while_cond:
    jmp     l_test_16_while_cond    #  15:     goto   16_while_cond
    movl    $97, %eax               #  16:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  17:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_21_if_false      #  18:     goto   21_if_false
    jmp     l_test_19               #  19:     goto   19
l_test_21_if_false:
l_test_19:
    jmp     l_test_12_while_cond    #  22:     goto   12_while_cond

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
    .align   4
v0:                                 # <array 56 of <array 72 of <array 68 of <array 41 of <array 26 of <char>>>>>>
    .long    5
    .long   56
    .long   72
    .long   68
    .long   41
    .long   26
    .skip 292271616
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
