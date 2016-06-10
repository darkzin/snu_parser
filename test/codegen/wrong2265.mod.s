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

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    call    WriteLn                 #   0:     call   WriteLn
    jmp     l_f0_exit              
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t7       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $v1       <char> %ebp-18 ]

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
    call    dummyINTfunc            #   0:     call   t6 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_f1_2_while_cond:
    jmp     l_f1_5                  #   2:     goto   5
    jmp     l_f1_5                  #   3:     goto   5
    jmp     l_f1_6                  #   4:     goto   6
l_f1_5:
    movl    $1, %eax                #   6:     assign t7 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_7                  #   7:     goto   7
l_f1_6:
    movl    $0, %eax                #   9:     assign t7 <- 0
    movb    %al, -17(%ebp)         
l_f1_7:
    movzbl  -17(%ebp), %eax         #  11:     if     t7 # 0 goto 3_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_3_while_body      
    jmp     l_f1_1                  #  12:     goto   1
l_f1_3_while_body:
    jmp     l_f1_2_while_cond       #  14:     goto   2_while_cond
l_f1_1:
    movl    $97, %eax               #  16:     assign v1 <- 97
    movb    %al, -18(%ebp)         

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t8       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 96 of <array 94 of <array 79 of <array 28 of <array 46 of <char>>>>>>> %ebp+12 ]

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
    jmp     l_f2_5                  #   0:     goto   5
l_f2_5:
    jmp     l_f2_1                  #   2:     goto   1
    jmp     l_f2_2                  #   3:     goto   2
l_f2_1:
    movl    $1, %eax                #   5:     assign t6 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   6:     goto   3
l_f2_2:
    movl    $0, %eax                #   8:     assign t6 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #  10:     return t6
    jmp     l_f2_exit              
    movl    $47911, %eax            #  11:     sub    t7 <- 47911, 47263
    movl    $47263, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     if     t7 <= 20222 goto 12
    movl    $20222, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_12                
    jmp     l_f2_13                 #  13:     goto   13
l_f2_12:
    movl    $1, %eax                #  15:     assign t8 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_14                 #  16:     goto   14
l_f2_13:
    movl    $0, %eax                #  18:     assign t8 <- 0
    movb    %al, -21(%ebp)         
l_f2_14:
    movzbl  -21(%ebp), %eax         #  20:     return t8
    jmp     l_f2_exit              
    movl    $99185, %eax            #  21:     if     99185 <= 8084 goto 17_if_true
    movl    $8084, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f2_17_if_true        
    jmp     l_f2_18_if_false        #  22:     goto   18_if_false
l_f2_17_if_true:
    jmp     l_f2_22_if_false        #  24:     goto   22_if_false
    jmp     l_f2_20                 #  25:     goto   20
l_f2_22_if_false:
l_f2_20:
    movl    $44650, %eax            #  28:     assign v1 <- 44650
    movl    %eax, 8(%ebp)          
l_f2_25_while_cond:
    jmp     l_f2_24                 #  30:     goto   24
    jmp     l_f2_25_while_cond      #  31:     goto   25_while_cond
l_f2_24:
    jmp     l_f2_16                 #  33:     goto   16
l_f2_18_if_false:
l_f2_16:

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <bool> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]

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
    jmp     l_test_5                #   0:     goto   5
l_test_5:
    movl    $1, %eax                #   2:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_7                #   3:     goto   7
    movl    $0, %eax                #   4:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_7:
    movzbl  -13(%ebp), %eax         #   6:     if     t0 # 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_1               
    jmp     l_test_2                #   7:     goto   2
l_test_1:
    movl    $1, %eax                #   9:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_3                #  10:     goto   3
l_test_2:
    movl    $0, %eax                #  12:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_3:
    movzbl  -14(%ebp), %eax         #  14:     assign v0 <- t1
    movb    %al, v0                
    call    dummyCHARfunc           #  15:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  16:     param  0 <- t2
    pushl   %eax                   
    call    WriteChar               #  17:     call   WriteChar
    addl    $4, %esp               
    movl    $1, %eax                #  18:     if     1 = 1 goto 11_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_11_if_true      
    jmp     l_test_12_if_false      #  19:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_14               #  21:     goto   14
l_test_14:
    movl    $25414, %eax            #  23:     if     25414 > 3427 goto 18_if_true
    movl    $3427, %ebx            
    cmpl    %ebx, %eax             
    jg      l_test_18_if_true      
    jmp     l_test_19_if_false      #  24:     goto   19_if_false
l_test_18_if_true:
    jmp     l_test_17               #  26:     goto   17
l_test_19_if_false:
l_test_17:
    jmp     l_test_10               #  29:     goto   10
l_test_12_if_false:
l_test_10:
    call    dummyBOOLfunc           #  32:     call   t3 <- dummyBOOLfunc
    movb    %al, -16(%ebp)         
    movl    $58387, %eax            #  33:     div    t4 <- 58387, 19216
    movl    $19216, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  34:     assign v1 <- t4
    movl    %eax, v1               
    call    dummyBOOLfunc           #  35:     call   t5 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         

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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
