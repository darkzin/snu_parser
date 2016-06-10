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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t5       <bool> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 58 of <array 62 of <array 34 of <array 4 of <array 73 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]

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
    movl    $98, %eax               #   0:     assign v1 <- 98
    movb    %al, 12(%ebp)          
    call    dummyCHARfunc           #   1:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   2:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #   3:     call   t4 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -14(%ebp), %eax         #   4:     if     t3 >= t4 goto 3
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_3                 
    jmp     l_f0_4                  #   5:     goto   4
l_f0_3:
    movl    $1, %eax                #   7:     assign t5 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f0_5                  #   8:     goto   5
l_f0_4:
    movl    $0, %eax                #  10:     assign t5 <- 0
    movb    %al, -16(%ebp)         
l_f0_5:
    movzbl  -16(%ebp), %eax         #  12:     return t5
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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 44 of <array 42 of <array 95 of <array 7 of <array 75 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 29 of <array 69 of <array 69 of <array 36 of <array 41 of <char>>>>>>> %ebp+12 ]
    #    -32(%ebp)   4  [ $v2       <int> %ebp-32 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    movl    $98, %eax               #   1:     if     98 >= 100 goto 4
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_4                 
    jmp     l_f1_5                  #   2:     goto   5
l_f1_4:
    movl    $1, %eax                #   4:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_6                  #   5:     goto   6
l_f1_5:
    movl    $0, %eax                #   7:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f1_6:
    movzbl  -13(%ebp), %eax         #   9:     return t2
    jmp     l_f1_exit              
l_f1_9_while_cond:
    jmp     l_f1_8                  #  11:     goto   8
    movl    $80553, %eax            #  12:     if     80553 > 77096 goto 12_if_true
    movl    $77096, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_12_if_true        
    jmp     l_f1_13_if_false        #  13:     goto   13_if_false
l_f1_12_if_true:
    jmp     l_f1_11                 #  15:     goto   11
l_f1_13_if_false:
l_f1_11:
    jmp     l_f1_9_while_cond       #  18:     goto   9_while_cond
l_f1_8:
    jmp     l_f1_0                  #  20:     goto   0
l_f1_2_if_false:
l_f1_0:
    jmp     l_f1_16                 #  23:     goto   16
l_f1_16:
    movl    $1, %eax                #  25:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_18                 #  26:     goto   18
    movl    $0, %eax                #  27:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f1_18:
    movzbl  -14(%ebp), %eax         #  29:     return t3
    jmp     l_f1_exit              
    movl    $58937, %eax            #  30:     add    t4 <- 58937, 57099
    movl    $57099, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  31:     sub    t5 <- t4, 905
    movl    $905, %ebx             
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  32:     sub    t6 <- t5, 83355
    movl    $83355, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  33:     assign v2 <- t6
    movl    %eax, -32(%ebp)        

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
    #    -13(%ebp)   1  [ $v0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $v1       <int> %ebp-20 ]

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
    movl    $48800, %eax            #   1:     if     48800 > 38320 goto 2_while_body
    movl    $38320, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    jmp     l_f2_exit              
    jmp     l_f2_exit              
    movl    $99, %eax               #   6:     if     99 >= 100 goto 7_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_7_if_true         
    jmp     l_f2_8_if_false         #   7:     goto   8_if_false
l_f2_7_if_true:
    jmp     l_f2_6                  #   9:     goto   6
l_f2_8_if_false:
l_f2_6:
l_f2_11_while_cond:
    movl    $25801, %eax            #  13:     if     25801 <= 9195 goto 12_while_body
    movl    $9195, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f2_12_while_body     
    jmp     l_f2_10                 #  14:     goto   10
l_f2_12_while_body:
    jmp     l_f2_11_while_cond      #  16:     goto   11_while_cond
l_f2_10:
    movl    $43719, %eax            #  18:     if     43719 > 56956 goto 15_if_true
    movl    $56956, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_15_if_true        
    jmp     l_f2_16_if_false        #  19:     goto   16_if_false
l_f2_15_if_true:
    jmp     l_f2_14                 #  21:     goto   14
l_f2_16_if_false:
l_f2_14:
    jmp     l_f2_1_while_cond       #  24:     goto   1_while_cond
l_f2_0:
    movl    $97, %eax               #  26:     assign v0 <- 97
    movb    %al, -13(%ebp)         
    movl    $87022, %eax            #  27:     assign v1 <- 87022
    movl    %eax, -20(%ebp)        

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
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
    movl    $48100, %eax            #   0:     add    t0 <- 48100, 88122
    movl    $88122, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t1 <- t0, 65492
    movl    $65492, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     if     t1 = 3955 goto 1_if_true
    movl    $3955, %ebx            
    cmpl    %ebx, %eax             
    je      l_test_1_if_true       
    jmp     l_test_2_if_false       #   3:     goto   2_if_false
l_test_1_if_true:
    movl    $99, %eax               #   5:     assign v0 <- 99
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_0                #   7:     goto   0
l_test_2_if_false:
l_test_0:
l_test_7_while_cond:
    jmp     l_test_8_while_body     #  11:     goto   8_while_body
    jmp     l_test_6                #  12:     goto   6
l_test_8_while_body:
    jmp     l_test_13_if_false      #  14:     goto   13_if_false
    jmp     l_test_11               #  15:     goto   11
l_test_13_if_false:
l_test_11:
    jmp     l_test_7_while_cond     #  18:     goto   7_while_cond
l_test_6:
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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
