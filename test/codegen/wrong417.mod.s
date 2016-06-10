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
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #    -13(%ebp)   1  [ $v3       <char> %ebp-13 ]

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
l_f0_1_while_cond:
    movl    $97, %eax               #   1:     if     97 > 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    movl    $99, %eax               #   4:     assign v3 <- 99
    movb    %al, -13(%ebp)         
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #   6:     goto   1_while_cond
l_f0_0:
    jmp     l_f0_8_if_false         #   8:     goto   8_if_false
    movl    $9606, %eax             #   9:     param  0 <- 9606
    pushl   %eax                   
    call    WriteInt                #  10:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f0_exit              
    jmp     l_f0_6                  #  12:     goto   6
l_f0_8_if_false:
l_f0_6:
    call    dummyProcedure          #  15:     call   dummyProcedure

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t8       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t9       <bool> %ebp-22 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]

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
    movl    $12767, %eax            #   0:     add    t7 <- 12767, 91333
    movl    $91333, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     return t7
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #   2:     call   t8 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   3:     if     t8 = 1 goto 6
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_6                 
    jmp     l_f1_3                  #   4:     goto   3
l_f1_6:
    jmp     l_f1_3                  #   6:     goto   3
    movl    $1, %eax                #   7:     assign t9 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f1_4                  #   8:     goto   4
l_f1_3:
    movl    $0, %eax                #  10:     assign t9 <- 0
    movb    %al, -22(%ebp)         
l_f1_4:
    movzbl  -22(%ebp), %eax         #  12:     assign v1 <- t9
    movb    %al, 8(%ebp)           
    jmp     l_f1_8                  #  13:     goto   8
    jmp     l_f1_9                  #  14:     goto   9
l_f1_8:
    movl    $1, %eax                #  16:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_10                 #  17:     goto   10
l_f1_9:
    movl    $0, %eax                #  19:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f1_10:
    movzbl  -13(%ebp), %eax         #  21:     assign v1 <- t10
    movb    %al, 8(%ebp)           

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
    #    -13(%ebp)   1  [ $t7       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t9       <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 7 of <array 9 of <array 10 of <array 7 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 4 of <array 9 of <array 9 of <array 4 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 1 of <array 4 of <array 4 of <array 9 of <array 9 of <int>>>>>>> %ebp+20 ]
    #    -16(%ebp)   1  [ $v5       <char> %ebp-16 ]

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
    movl    $97, %eax               #   0:     assign v5 <- 97
    movb    %al, -16(%ebp)         
    call    dummyBOOLfunc           #   1:     call   t7 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   2:     assign v5 <- 97
    movb    %al, -16(%ebp)         
    call    dummyCHARfunc           #   3:     call   t8 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_f2_1                  #   4:     goto   1
l_f2_1:
l_f2_8_while_cond:
    jmp     l_f2_10                 #   7:     goto   10
l_f2_10:
l_f2_14_while_cond:
    call    dummyCHARfunc           #  10:     call   t9 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movl    $99, %eax               #  11:     if     99 <= t9 goto 15_while_body
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_15_while_body     
    jmp     l_f2_13                 #  12:     goto   13
l_f2_15_while_body:
    jmp     l_f2_14_while_cond      #  14:     goto   14_while_cond
l_f2_13:
    jmp     l_f2_8_while_cond       #  16:     goto   8_while_cond

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t4       <bool> %ebp-26 ]
    #    -27(%ebp)   1  [ $t5       <char> %ebp-27 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t0 < 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_1_if_true       
    jmp     l_test_2_if_false       #   2:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_exit            
    jmp     l_test_0                #   5:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $273, %eax              #   8:     add    t1 <- 273, 87826
    movl    $87826, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     sub    t2 <- t1, 61524
    movl    $61524, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     assign v0 <- t2
    movl    %eax, v0               
l_test_7_while_cond:
    call    dummyCHARfunc           #  12:     call   t3 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  13:     if     t3 <= 99 goto 8_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_8_while_body    
    jmp     l_test_6                #  14:     goto   6
l_test_8_while_body:
    movl    $97, %eax               #  16:     if     97 <= 99 goto 11_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_11_if_true      
    jmp     l_test_12_if_false      #  17:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_10               #  19:     goto   10
l_test_12_if_false:
l_test_10:
l_test_15_while_cond:
    jmp     l_test_14               #  23:     goto   14
    jmp     l_test_15_while_cond    #  24:     goto   15_while_cond
l_test_14:
    jmp     l_test_7_while_cond     #  26:     goto   7_while_cond
l_test_6:
    call    dummyBOOLfunc           #  28:     call   t4 <- dummyBOOLfunc
    movb    %al, -26(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_17               #  30:     goto   17
l_test_17:
    call    dummyCHARfunc           #  32:     call   t5 <- dummyCHARfunc
    movb    %al, -27(%ebp)         
    movzbl  -27(%ebp), %eax         #  33:     assign v1 <- t5
    movb    %al, v1                
    call    dummyINTfunc            #  34:     call   t6 <- dummyINTfunc
    movl    %eax, -32(%ebp)        

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
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
