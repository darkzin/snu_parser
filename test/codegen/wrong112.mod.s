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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <bool> %ebp-17 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 3 of <array 6 of <array 9 of <array 7 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 7 of <array 8 of <array 9 of <array 6 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 10 of <array 7 of <array 3 of <array 7 of <bool>>>>>>> %ebp+20 ]
    #    -24(%ebp)   4  [ $v4       <int> %ebp-24 ]

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
    movl    $28959, %eax            #   0:     add    t3 <- 28959, 7725
    movl    $7725, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v4 <- t3
    movl    %eax, -24(%ebp)        
    call    dummyBOOLfunc           #   2:     call   t4 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
l_f0_3_while_cond:
    jmp     l_f0_4_while_body       #   4:     goto   4_while_body
l_f0_4_while_body:
l_f0_7_while_cond:
    movl    $17698, %eax            #   7:     if     17698 >= 19477 goto 8_while_body
    movl    $19477, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_8_while_body      
    jmp     l_f0_6                  #   8:     goto   6
l_f0_8_while_body:
    jmp     l_f0_7_while_cond       #  10:     goto   7_while_cond
l_f0_6:
    jmp     l_f0_3_while_cond       #  12:     goto   3_while_cond

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]

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
    call    dummyINTfunc            #   0:     call   t3 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $59734, %eax            #   1:     mul    t4 <- 59734, 30976
    movl    $30976, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $58903, %eax            #   2:     add    t5 <- 58903, t4
    movl    -20(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     return t5
    jmp     l_f1_exit              
    call    dummyINTfunc            #   4:     call   t6 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     div    t7 <- t6, 67935
    movl    $67935, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     return t7
    jmp     l_f1_exit              

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -73(%ebp)   1  [ $t3       <char> %ebp-73 ]
    #    -80(%ebp)   4  [ $t4       <ptr(4) to <array 7 of <array 10 of <array 7 of <array 3 of <array 7 of <bool>>>>>>> %ebp-80 ]
    #    -84(%ebp)   4  [ $t5       <ptr(4) to <array 8 of <array 7 of <array 8 of <array 9 of <array 6 of <bool>>>>>>> %ebp-84 ]
    #    -88(%ebp)   4  [ $t6       <ptr(4) to <array 1 of <array 3 of <array 6 of <array 9 of <array 7 of <int>>>>>>> %ebp-88 ]
    #    -89(%ebp)   1  [ $t7       <char> %ebp-89 ]
    #    -96(%ebp)   4  [ $t8       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t9       <int> %ebp-100 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 3 of <array 4 of <array 7 of <array 3 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 4 of <array 5 of <array 4 of <array 4 of <char>>>>>>> %ebp+12 ]
    #   -101(%ebp)   1  [ $v2       <bool> %ebp-101 ]
    #   -102(%ebp)   1  [ $v3       <char> %ebp-102 ]
    #   -4664(%ebp)  4560  [ $v4       <array 1 of <array 3 of <array 6 of <array 9 of <array 7 of <int>>>>>> %ebp-4664 ]
    #   -28880(%ebp)  24216  [ $v5       <array 8 of <array 7 of <array 8 of <array 9 of <array 6 of <bool>>>>>> %ebp-28880 ]
    #   -39196(%ebp)  10314  [ $v6       <array 7 of <array 10 of <array 7 of <array 3 of <array 7 of <bool>>>>>> %ebp-39196 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $39184, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9796, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-4664(%ebp)          # local array 'v4': 5 dimensions
    movl    $1,-4660(%ebp)          #   dimension 1: 1 elements
    movl    $3,-4656(%ebp)          #   dimension 2: 3 elements
    movl    $6,-4652(%ebp)          #   dimension 3: 6 elements
    movl    $9,-4648(%ebp)          #   dimension 4: 9 elements
    movl    $7,-4644(%ebp)          #   dimension 5: 7 elements
    movl    $5,-28880(%ebp)         # local array 'v5': 5 dimensions
    movl    $8,-28876(%ebp)         #   dimension 1: 8 elements
    movl    $7,-28872(%ebp)         #   dimension 2: 7 elements
    movl    $8,-28868(%ebp)         #   dimension 3: 8 elements
    movl    $9,-28864(%ebp)         #   dimension 4: 9 elements
    movl    $6,-28860(%ebp)         #   dimension 5: 6 elements
    movl    $5,-39196(%ebp)         # local array 'v6': 5 dimensions
    movl    $7,-39192(%ebp)         #   dimension 1: 7 elements
    movl    $10,-39188(%ebp)        #   dimension 2: 10 elements
    movl    $7,-39184(%ebp)         #   dimension 3: 7 elements
    movl    $3,-39180(%ebp)         #   dimension 4: 3 elements
    movl    $7,-39176(%ebp)         #   dimension 5: 7 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -73(%ebp)         
    jmp     l_f2_0                  #   1:     goto   0
l_f2_0:
    jmp     l_f2_6_if_false         #   3:     goto   6_if_false
    jmp     l_f2_exit              
    jmp     l_f2_exit              
    movl    $1, %eax                #   6:     assign v2 <- 1
    movb    %al, -101(%ebp)        
    jmp     l_f2_4                  #   7:     goto   4
l_f2_6_if_false:
l_f2_4:
    leal    -39196(%ebp), %eax      #  10:     &()    t4 <- v6
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  11:     param  3 <- t4
    pushl   %eax                   
    leal    -28880(%ebp), %eax      #  12:     &()    t5 <- v5
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  13:     param  2 <- t5
    pushl   %eax                   
    leal    -4664(%ebp), %eax       #  14:     &()    t6 <- v4
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  15:     param  1 <- t6
    pushl   %eax                   
    movl    $100, %eax              #  16:     param  0 <- 100
    pushl   %eax                   
    call    f0                      #  17:     call   t7 <- f0
    addl    $16, %esp              
    movb    %al, -89(%ebp)         
    movl    $71619, %eax            #  18:     sub    t8 <- 71619, 79284
    movl    $79284, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $2, %eax                #  19:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  20:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  21:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    -96(%ebp), %eax         #  22:     mul    t10 <- t8, t9
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  23:     add    t11 <- t10, 48755
    movl    $48755, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #  24:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  25:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  26:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  27:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  28:     add    t14 <- t13, 6238
    movl    $6238, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  29:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  30:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  31:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  32:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  33:     add    t17 <- t16, 46134
    movl    $46134, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  34:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  35:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  36:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  37:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  38:     add    t20 <- t19, 64058
    movl    $64058, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  39:     mul    t21 <- t20, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    12(%ebp), %eax          #  40:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  41:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  42:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    12(%ebp), %eax          #  43:     add    t24 <- v1, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movzbl  -89(%ebp), %eax         #  44:     assign @t24 <- t7
    movl    -72(%ebp), %edi        
    movb    %al, (%edi)            

l_f2_exit:
    # epilogue
    addl    $39184, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 7 of <char>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]

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
    movl    $98, %eax               #   0:     if     98 = 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
l_test_5_while_cond:
    jmp     l_test_4                #   4:     goto   4
    jmp     l_test_5_while_cond     #   5:     goto   5_while_cond
l_test_4:
l_test_8_while_cond:
    jmp     l_test_7                #   8:     goto   7
    jmp     l_test_8_while_cond     #   9:     goto   8_while_cond
l_test_7:
    call    dummyBOOLfunc           #  11:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_0                #  12:     goto   0
l_test_2_if_false:
l_test_0:
l_test_12_while_cond:
    jmp     l_test_11               #  16:     goto   11
    leal    _str_1, %eax            #  17:     &()    t1 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     param  0 <- t1
    pushl   %eax                   
    call    WriteStr                #  19:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_exit            
    jmp     l_test_12_while_cond    #  21:     goto   12_while_cond
l_test_11:
    call    dummyCHARfunc           #  23:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $100, %eax              #  27:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_20               #  28:     goto   20
l_test_20:

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
