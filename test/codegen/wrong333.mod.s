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
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 7 of <array 8 of <array 6 of <array 8 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v3 <- t2
    movb    %al, 16(%ebp)          
    movl    $98, %eax               #   2:     assign v3 <- 98
    movb    %al, 16(%ebp)          
    movl    $12792, %eax            #   3:     mul    t3 <- 12792, 52278
    movl    $52278, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     sub    t4 <- t3, 52430
    movl    $52430, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     return t4
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 3 of <array 7 of <array 8 of <array 6 of <array 8 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 1 of <array 6 of <array 1 of <array 3 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 7 of <array 1 of <array 2 of <array 8 of <int>>>>>>> %ebp+12 ]
    #   -32304(%ebp)  32280  [ $v3       <array 3 of <array 7 of <array 8 of <array 6 of <array 8 of <int>>>>>> %ebp-32304 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32292, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8073, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-32304(%ebp)         # local array 'v3': 5 dimensions
    movl    $3,-32300(%ebp)         #   dimension 1: 3 elements
    movl    $7,-32296(%ebp)         #   dimension 2: 7 elements
    movl    $8,-32292(%ebp)         #   dimension 3: 8 elements
    movl    $6,-32288(%ebp)         #   dimension 4: 6 elements
    movl    $8,-32284(%ebp)         #   dimension 5: 8 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   1:     if     100 > t2 goto 1_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_5_while_cond:
    jmp     l_f1_4                  #   8:     goto   4
    jmp     l_f1_5_while_cond       #   9:     goto   5_while_cond
l_f1_4:
    movl    $97, %eax               #  11:     param  2 <- 97
    pushl   %eax                   
    movl    $40300, %eax            #  12:     param  1 <- 40300
    pushl   %eax                   
    leal    -32304(%ebp), %eax      #  13:     &()    t3 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  15:     call   t4 <- f0
    addl    $12, %esp              
    movl    %eax, -24(%ebp)        

l_f1_exit:
    # epilogue
    addl    $32292, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $v1       <bool> %ebp-14 ]
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
    call    WriteLn                 #   0:     call   WriteLn
    jmp     l_f2_3_if_false         #   1:     goto   3_if_false
    movl    $90464, %eax            #   2:     if     90464 <= 89158 goto 5
    movl    $89158, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_5                 
    jmp     l_f2_6                  #   3:     goto   6
l_f2_5:
    movl    $1, %eax                #   5:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_7                  #   6:     goto   7
l_f2_6:
    movl    $0, %eax                #   8:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f2_7:
    movzbl  -13(%ebp), %eax         #  10:     assign v1 <- t2
    movb    %al, -14(%ebp)         
    movl    $61707, %eax            #  11:     assign v2 <- 61707
    movl    %eax, -20(%ebp)        
    movl    $99, %eax               #  12:     return 99
    jmp     l_f2_exit              
    jmp     l_f2_1                  #  13:     goto   1
l_f2_3_if_false:
l_f2_1:
    call    WriteLn                 #  16:     call   WriteLn

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 5 of <char>>> %ebp-20 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t0
    movb    %al, v0                
    leal    _str_1, %eax            #   2:     &()    t1 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  0 <- t1
    pushl   %eax                   
    call    WriteStr                #   4:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_exit            
    movl    $13419, %eax            #   6:     if     13419 <= 67459 goto 4_if_true
    movl    $67459, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_4_if_true       
    jmp     l_test_5_if_false       #   7:     goto   5_if_false
l_test_4_if_true:
    jmp     l_test_7                #   9:     goto   7
l_test_7:
    movl    $99, %eax               #  11:     if     99 # 99 goto 11_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_11_if_true      
    jmp     l_test_12_if_false      #  12:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_10               #  14:     goto   10
l_test_12_if_false:
l_test_10:
    movl    $0, %eax                #  17:     assign v1 <- 0
    movb    %al, v1                
    jmp     l_test_3                #  18:     goto   3
l_test_5_if_false:
l_test_3:
    call    WriteLn                 #  21:     call   WriteLn

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
