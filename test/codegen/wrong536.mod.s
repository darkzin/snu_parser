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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t5       <bool> %ebp-22 ]

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
l_f0_1_while_cond:
    jmp     l_f0_2_while_body       #   1:     goto   2_while_body
    jmp     l_f0_2_while_body       #   2:     goto   2_while_body
l_f0_2_while_body:
    movl    $99, %eax               #   4:     if     99 >= 97 goto 6
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_6                 
    jmp     l_f0_7                  #   5:     goto   7
l_f0_6:
    movl    $1, %eax                #   7:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_8                  #   8:     goto   8
l_f0_7:
    movl    $0, %eax                #  10:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f0_8:
    movzbl  -13(%ebp), %eax         #  12:     return t2
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #  13:     goto   1_while_cond
    call    ReadInt                 #  14:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        
    call    dummyBOOLfunc           #  15:     call   t4 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  16:     if     t4 = 1 goto 12
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_12                
l_f0_12:
    movl    $1, %eax                #  18:     assign t5 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f0_14                 #  19:     goto   14
    movl    $0, %eax                #  20:     assign t5 <- 0
    movb    %al, -22(%ebp)         
l_f0_14:
    movzbl  -22(%ebp), %eax         #  22:     return t5
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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 10 of <array 8 of <array 7 of <array 5 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]

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
    jmp     l_f1_4                  #   0:     goto   4
    jmp     l_f1_4                  #   1:     goto   4
l_f1_4:
    jmp     l_f1_2                  #   3:     goto   2
    movl    $1, %eax                #   4:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   5:     goto   3
l_f1_2:
    movl    $0, %eax                #   7:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   9:     assign v3 <- t2
    movb    %al, 16(%ebp)          
    jmp     l_f1_13_if_true         #  10:     goto   13_if_true
l_f1_13_if_true:
    call    dummyCHARfunc           #  12:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $97, %eax               #  13:     if     97 <= 98 goto 19_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_19_if_true        
    jmp     l_f1_20_if_false        #  14:     goto   20_if_false
l_f1_19_if_true:
    jmp     l_f1_18                 #  16:     goto   18
l_f1_20_if_false:
l_f1_18:
    jmp     l_f1_exit              
    jmp     l_f1_12                 #  20:     goto   12
l_f1_12:
    call    dummyCHARfunc           #  22:     call   t4 <- dummyCHARfunc
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
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 5 of <array 10 of <array 8 of <array 7 of <array 5 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t4       <ptr(4) to <array 7 of <char>>> %ebp-24 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #   -14048(%ebp)  14024  [ $v2       <array 5 of <array 10 of <array 8 of <array 7 of <array 5 of <char>>>>>> %ebp-14048 ]
    #   -14052(%ebp)   4  [ $v3       <int> %ebp-14052 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $14040, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $3510, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-14048(%ebp)         # local array 'v2': 5 dimensions
    movl    $5,-14044(%ebp)         #   dimension 1: 5 elements
    movl    $10,-14040(%ebp)        #   dimension 2: 10 elements
    movl    $8,-14036(%ebp)         #   dimension 3: 8 elements
    movl    $7,-14032(%ebp)         #   dimension 4: 7 elements
    movl    $5,-14028(%ebp)         #   dimension 5: 5 elements

    # function body
    movl    $1, %eax                #   0:     param  2 <- 1
    pushl   %eax                   
    leal    -14048(%ebp), %eax      #   1:     &()    t2 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  1 <- t2
    pushl   %eax                   
    call    dummyCHARfunc           #   3:     call   t3 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   4:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #   5:     call   f1
    addl    $12, %esp              
    movl    $24799, %eax            #   6:     assign v3 <- 24799
    movl    %eax, -14052(%ebp)     
l_f2_3_while_cond:
l_f2_6_while_cond:
    movl    $100, %eax              #   9:     if     100 = 99 goto 7_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_7_while_body      
    jmp     l_f2_5                  #  10:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #  12:     goto   6_while_cond
l_f2_5:
    leal    _str_1, %eax            #  14:     &()    t4 <- _str_1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     param  0 <- t4
    pushl   %eax                   
    call    WriteStr                #  16:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f2_12_if_false        #  17:     goto   12_if_false
    jmp     l_f2_10                 #  18:     goto   10
l_f2_12_if_false:
l_f2_10:
    jmp     l_f2_3_while_cond       #  21:     goto   3_while_cond

l_f2_exit:
    # epilogue
    addl    $14040, %esp            # remove locals
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
    movzbl  -13(%ebp), %eax         #   1:     param  0 <- t0
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
l_test_2_while_cond:
    jmp     l_test_1                #   4:     goto   1
    jmp     l_test_exit            
l_test_6_while_cond:
    movl    $23778, %eax            #   7:     if     23778 = 98331 goto 7_while_body
    movl    $98331, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_7_while_body    
    jmp     l_test_5                #   8:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #  10:     goto   6_while_cond
l_test_5:
l_test_10_while_cond:
    jmp     l_test_9                #  13:     goto   9
    jmp     l_test_10_while_cond    #  14:     goto   10_while_cond
l_test_9:
    movl    $1, %eax                #  16:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_2_while_cond     #  17:     goto   2_while_cond
l_test_1:
    jmp     l_test_exit            
    jmp     l_test_exit            
    call    dummyINTfunc            #  21:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     param  0 <- t1
    pushl   %eax                   
    call    WriteInt                #  23:     call   WriteInt
    addl    $4, %esp               
    movl    $35034, %eax            #  24:     assign v1 <- 35034
    movl    %eax, v1               

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <bool>
    .skip    1
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
